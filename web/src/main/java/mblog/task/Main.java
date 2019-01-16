package mblog.task;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import mblog.modules.authc.entity.Article;
import org.jsoup.*;
import org.jsoup.nodes.*;
import org.jsoup.select.*;


/**
 * @author shizongger
 * @date 2017/02/09
 */
public class Main {
	
    private static final String URL = "http://blog.csdn.net/guolin_blog";

    public static void main(String[] args) throws IOException {
        Connection conn = Jsoup.connect(URL)
                .userAgent("Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0")
                .timeout(5000)
                .method(Connection.Method.GET);
        Document doc = conn.get();
        Element body = doc.body();

        //获取总页数
        String totalPageStr = body.getElementById("papelist").select("span:eq(0)").text();
        String regex = ".+共(\\d+)页";
        totalPageStr = totalPageStr.replaceAll(regex, "$1");
        int totalPage = Integer.parseInt(totalPageStr);
        int pageNow = 1;

        List<Article> articleList = new ArrayList<Article>();
        for(pageNow = 1; pageNow <= totalPage; pageNow++){
        	articleList.addAll(getArtitcleByPage(pageNow));
        }
        
        //遍历输出博主所有的文章
        for(Article article : articleList) {
        	System.out.println("文章标题:" + article.getTitle());
        	System.out.println("文章绝对路劲地址:http://blog.csdn.net" + article.getAddress());
        	System.out.println("文章简介:" + article.getDesption());
        	System.out.println("发表时间:" + article.getTime());
        }
    }

    public static List<Article> getArtitcleByPage(int pageNow) throws IOException{

        Connection conn = Jsoup.connect(URL + "/article/list/" + pageNow)
                .userAgent("Mozilla/5.0 (Windows NT 6.1; rv:47.0) Gecko/20100101 Firefox/47.")
                .timeout(5000)
                .method(Connection.Method.GET);
        Document doc = conn.get();
        Element body = doc.body();
        List<Article> resultList = new ArrayList<Article>();

        Element articleListDiv = body.getElementById("article_list");
        Elements articleList = articleListDiv.getElementsByClass("list_item");
        for(Element article : articleList){
        	Article articleEntity = new Article();
            Element linkNode = (article.select("div h1 a")).get(0);         
            Element desptionNode = (article.getElementsByClass("article_description")).get(0);
            Element articleManageNode = (article.getElementsByClass("article_manage")).get(0);

            articleEntity.setAddress(linkNode.attr("href"));
            articleEntity.setTitle(linkNode.text());
            articleEntity.setDesption(desptionNode.text());
          //  articleEntity.setTime(articleManageNode.select("span:eq(0").text());

            resultList.add(articleEntity);
        }
        return resultList;
    }
}