package mblog.modules.authc.service.impl;

import mblog.modules.authc.dao.ArticleDao;
import mblog.modules.authc.entity.Article;
import mblog.modules.authc.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

@Service
//@Transactional
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleDao articleDao;

    private static final String URL = "https://www.csdn.net/nav/other";

    @Override
    //@Transactional
    public long save(Article article){
        try {
            this.searchUrl();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 1;
    }

    public void searchUrl() throws IOException {

        //获取url地址的http链接Connection
        Connection conn = Jsoup.connect(URL)	//博客首页的url地址
                .userAgent("Mozilla/5.0 (X11; U; Linux x86_64; zh-CN; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10")	//http请求的浏览器设置
                .timeout(1000)   //http连接时长
                .method(Connection.Method.GET);  //请求类型是get请求，http请求还是post,delete等方式
        //获取页面的html文档
        Document doc = conn.get();
        Element body = doc.body();

        //将爬取出来的文章封装到Artcle中，并放到ArrayList里面去
        List<Article> resultList = new ArrayList<Article>(100);

        Element articleListDiv = body.getElementById("feedlist_id");
        Elements articleList = articleListDiv.getElementsByClass("clearfix");
        for(Element article : articleList){
            Article articleEntity = new Article();
            //标题
            Element linkNode = (article.select("div h2 a")).get(0);
            //文章简介
            Element desptionNode = (article.getElementsByClass("summary oneline")).get(0);
            //时间
            Element articleManageNode = (article.getElementsByClass("time")).get(0);
            Element readNum = (article.getElementsByClass("read_num")).get(0);
            Element commentNum = (article.getElementsByClass("common_num ")).get(0);

            articleEntity.setAddress(linkNode.attr("href"));
            articleEntity.setTitle(linkNode.text());
            articleEntity.setDesption(desptionNode.text());
            //articleEntity.setTime(new Date());
            if ("".equals(readNum.getElementsByClass("num").text())) {
                articleEntity.setCommentNum(0);
            }else {
                articleEntity.setReadNum(Integer.parseInt(readNum.getElementsByClass("num").text()));
            }

            if ("".equals(commentNum.getElementsByClass("num").text())) {
                articleEntity.setCommentNum(0);
            }else {
                articleEntity.setCommentNum(Integer.parseInt(commentNum.getElementsByClass("num").text()));
            }
            articleEntity.setType("other");
            if(articleEntity.getReadNum()>1400){
                articleDao.save(articleEntity);
            }

        }

        //遍历输出ArrayList里面的爬取到的文章
        System.out.println("文章总数:" + resultList.size());
        for(Article article : resultList) {
            System.out.println("文章绝对路劲地址:http://blog.csdn.net" + article.getAddress());
        }
    }
}
