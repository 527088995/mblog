package mblog.task;

import mblog.modules.authc.entity.Article;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * java爬取csdn博客的简单的案例，如果你只爬取某个博主的首页文章，那么参考本程序员
 * 如果你想爬取某位博主的所有文章，请参考Main.java
 * @author shizongger
 * @date 2017/02/09
 */
public class MainOsc {

    //需要进行爬取得博客首页
//	private static final String URL = "http://blog.csdn.net/guolin_blog";
    private static final String URL = "https://www.oschina.net/blog?classification=428609";

    public static void main(String[] args) throws IOException {

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

        Element articleListDiv = body.getElementById("recommendArticleList");
        Elements articleList = articleListDiv.getElementsByClass("item blog-item");
        for(Element article : articleList){
            Article articleEntity = new Article();
            //标题
            Element linkNode = (article.select("div a")).get(0);
            //文章简介
            Element desptionNode = (article.getElementsByClass("line-clamp")).get(0);
            //Element articleManageNode = (article.getElementsByClass("time")).get(0);
            Element readNum = (article.getElementsByClass("eye icon")).get(0);
            Element commentNum = (article.getElementsByClass("comment outline icon ")).get(0);

            articleEntity.setAddress(linkNode.attr("href"));
            articleEntity.setTitle(linkNode.text());
            articleEntity.setDesption(desptionNode.text());
           // articleEntity.setTime(articleManageNode.select("span:eq(0").text());
            articleEntity.setReadNum(Integer.parseInt(readNum.getElementsByClass("num").text()));
            articleEntity.setCommentNum(Integer.parseInt(commentNum.getElementsByClass("num").text()));

            resultList.add(articleEntity);
        }

        //遍历输出ArrayList里面的爬取到的文章
        System.out.println("文章总数:" + resultList.size());
        for(Article article : resultList) {
            System.out.println("文章绝对路劲地址:http://blog.csdn.net" + article.getAddress());
        }
    }

}
