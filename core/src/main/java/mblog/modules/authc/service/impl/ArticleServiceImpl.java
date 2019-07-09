package mblog.modules.authc.service.impl;

import mblog.modules.authc.dao.ArticleDao;
import mblog.modules.authc.entity.Article;
import mblog.modules.authc.service.ArticleService;
import mblog.modules.blog.data.PostVO;
import mblog.modules.blog.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
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
    @Autowired
    private PostService postService;



    @Override
    //@Transactional
    public long saveOscUrl(){
        try {
            this.saveOscPage2();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 1;
    }
    @Override
    //@Transactional
    public long saveCsdnUrl(){
        try {
            this.searchCsdnUrl();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 1;
    }

    /**
     * 保存CSDN博客内容详情
     * @return
     */
    @Override
    @Transactional
    public long saveCsdn(){
        List<Article> articleList=articleDao.findTop100ByBlogTypeAndStatus("CSDN",0);
        for(Article article:articleList){
            String concent= null;
            try {
                concent = this.searchPsotUrl(article.getAddress());
            } catch (IOException e) {
                e.printStackTrace();
            }
            PostVO post=new PostVO();
            post.setContent(concent);//内容
            post.setArticleTypeKey("reprint");//转载
            post.setBlogClassKey(article.getType());//博客分类
            post.setTitle(article.getTitle());
            post.setAuthorId(1);
            post.setChannelId(2);
            post.setAuthorName("csdnUser");
            postService.post(post);
            articleDao.updateStatus(article.getId(),1);
        }
        return 1;
    };

    public String searchPsotUrl(String postUrl) throws IOException {

        //获取url地址的http链接Connection
        Connection conn = Jsoup.connect(postUrl)	//博客首页的url地址
                .userAgent("Mozilla/5.0 (X11; U; Linux x86_64; zh-CN; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10")	//http请求的浏览器设置
                .timeout(1000)   //http连接时长
                .method(Connection.Method.GET);  //请求类型是get请求，http请求还是post,delete等方式
        //获取页面的html文档
        Document doc = conn.get();
        Element body = doc.body();
        //将爬取出来的文章封装到Artcle中，并放到ArrayList里面去
        List<Article> resultList = new ArrayList<Article>(100);
        Element articleListDiv = body.getElementById("content_views");
        String html="<!DOCTYPE html>\n" +
                "<html>\n" +
                "<body>"+articleListDiv.outerHtml();
        html+= "<br/>作者原文链接:"+"<p><a href=\""+postUrl+"\" target=\"_blank\" rel=\"noopener\">"+postUrl+"</a></p>\n" +
                "</body>\n" +
                "</html>";
        //遍历输出ArrayList里面的爬取到的文章
        System.out.println("文章总数:" + postUrl);

        return html;
    }

    /**
     * 保存OSC博客内容详情
     * @return
     */
    @Override
    @Transactional
    public long saveOsc(){
        List<Article> articleList=articleDao.findTop100ByBlogTypeAndStatus("OSC",0);
        for(Article article:articleList){
            System.out.println("文章连接+++++++++++++++:" + article.getAddress());
            String concent= null;
            try {
                concent = this.searchOscUrl(article.getAddress());
            } catch (IOException e) {
                e.printStackTrace();
            }
            PostVO post=new PostVO();
            post.setContent(concent);//内容
            post.setArticleTypeKey("reprint");//转载
            post.setBlogClassKey(article.getType());//博客分类
            post.setTitle(article.getTitle());
            post.setAuthorId(1);
            post.setChannelId(2);
            post.setBlogType("OSC");
            post.setAuthorName(article.getType());
            postService.post(post);
            articleDao.updateStatus(article.getId(),1);
        }
        return 1;
    };
    public String searchOscUrl(String postUrl) throws IOException {

        //获取url地址的http链接Connection
        Connection conn = Jsoup.connect(postUrl)	//博客首页的url地址
                .userAgent("Mozilla/5.0 (X11; U; Linux x86_64; zh-CN; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10")	//http请求的浏览器设置
                .timeout(1000)   //http连接时长
                .method(Connection.Method.GET);  //请求类型是get请求，http请求还是post,delete等方式
        //获取页面的html文档
        Document doc = conn.get();
        Element body = doc.body();
        //将爬取出来的文章封装到Artcle中，并放到ArrayList里面去
        Elements articleListDiv = body.getElementById("articleContent").children();
        articleListDiv.remove(0);
        String html="<!DOCTYPE html>\n" +
                "<html>\n" +
                "<body>"+"<div class=\"htmledit_views\" id=\"content_views\"> "+articleListDiv.outerHtml()+"</div>";
        html+= "<br/>作者原文链接:"+"<p><a href=\""+postUrl+"\" target=\"_blank\" rel=\"noopener\">"+postUrl+"</a></p>\n" +
                "</body>\n" +
                "</html>";
        //遍历输出ArrayList里面的爬取到的文章
        System.out.println("文章总数:" + postUrl);

        return html;
    }

    public void searchCsdnUrl() throws IOException {
//        String[] Arr = {"ai","cloud", "db","career","game", "engineering","web",
//                "mobile", "iot","ops","fund", "lang", "arch", "avi", "sec","other"};
        List<String> urlList=new ArrayList<>();
        urlList.add("web");
        urlList.add("ai");
        urlList.add("cloud");
        urlList.add("db");
        urlList.add("fund");
        urlList.add("career");
        urlList.add("game");
        urlList.add("engineering");
        urlList.add("mobile");urlList.add("sec");
        urlList.add("iot");urlList.add("lang");urlList.add("arch");
        urlList.add("ops");urlList.add("avi");urlList.add("other");
        for(String type:urlList){
            String url="https://www.csdn.net/nav/"+type;
            //获取url地址的http链接Connection
            Connection conn = Jsoup.connect(url)	//博客首页的url地址
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
                articleEntity.setStatus(0);
                articleEntity.setType(type);
                articleEntity.setTime(new Date());
                articleEntity.setBlogType("CSDN");
                if(articleEntity.getReadNum()>100){
                    articleDao.save(articleEntity);
                }
                System.out.println("文章阅读数+++++++++++:" + articleEntity.getReadNum());
            }
            //遍历输出ArrayList里面的爬取到的文章
            System.out.println("文章总数++++++++++++:" + articleList.size());
            System.out.println("文章绝对路劲地址:http://blog.csdn.net" + "++++++++++++++++++++++++");
        }
    }
    public  void saveOSC() throws IOException {

        List<String> urlList=new ArrayList<>();
        urlList.add("5611447");//ai
        urlList.add("5593654");//cloud
        urlList.add("428639");//cloud
        urlList.add("5765988");//blockchain
        urlList.add("428602");//mobile
        urlList.add("428612");//web
        urlList.add("428640");//engineering
        urlList.add("429511");//game
        urlList.add("428609");//lang
        urlList.add("428610");//db
        urlList.add("428613");//ops
        urlList.add("6289115");//iot
        urlList.add("428647");//avi
        urlList.add("430381");//other
        urlList.add("428638");//arch

        for(String type:urlList){
            String url="https://www.oschina.net/blog?classification=";
            String relUrl=url+type;
            //获取url地址的http链接Connection
            Connection conn = Jsoup.connect(relUrl)	//博客首页的url地址
                    .userAgent("Mozilla/5.0 (X11; U; Linux x86_64; zh-CN; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10")	//http请求的浏览器设置
                    .timeout(1000)   //http连接时长
                    .method(Connection.Method.GET);  //请求类型是get请求，http请求还是post,delete等方式
            //获取页面的html文档
            Document doc = conn.get();
            Element body = doc.body();

            //将爬取出来的文章封装到Artcle中，并放到ArrayList里面去
            List<Article> resultList = new ArrayList<Article>(100);

            Element articleListDiv = body.getElementById("recommendArticleList");
            Elements articleList = articleListDiv.getElementsByClass("content");
            for(Element article : articleList){
                Article articleEntity = new Article();
                //标题
                Element linkNode = (article.select("div a")).get(0);
                //文章简介
                Element desptionNode = (article.getElementsByClass("line-clamp")).get(0);
                //Element articleManageNode = (article.getElementsByClass("time")).get(0);
                String readNum = (article.getElementsByClass("item")).get(3).text();
                Element commentNum = (article.getElementsByClass("item")).get(4);

                articleEntity.setAddress(linkNode.attr("href"));
                articleEntity.setTitle(linkNode.text());
                articleEntity.setDesption(desptionNode.text());
                // articleEntity.setTime(articleManageNode.select("span:eq(0").text());
                //阅读量
                if("".equals(readNum)){
                    articleEntity.setReadNum(0);
                }else {
                    if(readNum.contains("K")){
                        String rNum=readNum.replaceAll("K","");
                        float redNum=Float.parseFloat(rNum);
                        double readNums=redNum*1000;
                        articleEntity.setReadNum((int)readNums);
                    }else {
                        articleEntity.setReadNum(Integer.valueOf(readNum));
                    }
                }
                //评论
                if("".equals(commentNum.text())){
                    articleEntity.setCommentNum(0);
                }else {
                    articleEntity.setCommentNum(Integer.parseInt(commentNum.text()));
                }
                if("5611447".equals(type)){articleEntity.setType("ai");}
                if("5593654".equals(type)){articleEntity.setType("cloud");}
                if("428639".equals(type)){articleEntity.setType("cloud");}
                if("5765988".equals(type)){articleEntity.setType("blockchain");}
                if("428602".equals(type)){articleEntity.setType("mobile");}
                if("428612".equals(type)){articleEntity.setType("web");}
                if("428640".equals(type)){articleEntity.setType("engineering");}
                if("429511".equals(type)){articleEntity.setType("game");}
                if("428609".equals(type)){articleEntity.setType("lang");}
                if("428610".equals(type)){articleEntity.setType("db");}
                if("428613".equals(type)){articleEntity.setType("ops");}
                if("6289115".equals(type)){articleEntity.setType("iot");}
                if("428647".equals(type)){articleEntity.setType("avi");}
                if("430381".equals(type)){articleEntity.setType("other");}
                if("428638".equals(type)){articleEntity.setType("arch");}
                articleEntity.setTime(new Date());
                articleEntity.setBlogType("OSC");
                articleEntity.setStatus(0);
//                if(articleEntity.getReadNum()>50){
                    articleDao.save(articleEntity);
//                }
                System.out.println("文章阅读数++++++=:" + articleEntity.getReadNum());
                System.out.println("文章总数++=:" + articleEntity.getAddress());
                System.out.println("文章类型+++:" + articleEntity.getType());
            }
            //遍历输出ArrayList里面的爬取到的文章
            System.out.println("文章总数:" + articleList.size());
            System.out.println("文章绝对路劲地址:oooooooooooooooo++++++++++++++++++++++++++++++");
        }
    }

    /**
     * 保存第二页数据
     * @throws IOException
     */
    public  void saveOscPage2() throws IOException {
        List<String> urlList=new ArrayList<>();
        urlList.add("428612");//web
        urlList.add("428610");//db
        urlList.add("428613");//ops
        urlList.add("6289115");//iot
        urlList.add("5593654");//cloud
        urlList.add("428639");//cloud
        urlList.add("5765988");//blockchain
        urlList.add("428602");//mobile

        urlList.add("428647");//avi
        urlList.add("430381");//other
        urlList.add("428638");//arch
        urlList.add("428640");//engineering
        urlList.add("429511");//game
        urlList.add("428609");//lang
        urlList.add("5611447");//ai

        urlList.forEach(type -> {
            String url="https://www.oschina.net/blog?classification=";
            String relUrl=url+type;
            ///获取url地址的http链接Connection
            Connection conn1 = Jsoup.connect(relUrl)	//博客首页的url地址
                    .userAgent("Mozilla/5.0 (X11; U; Linux x86_64; zh-CN; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10")	//http请求的浏览器设置
                    .timeout(1000)   //http连接时长
                    .method(Connection.Method.GET);  //请求类型是get请求，http请求还是post,delete等方式
            //获取页面的html文档
            try{
                Document doc1 = conn1.get();
            }catch (Exception e) {

            }


            int pageNum=10;
            for(int i=6;i<pageNum;i++){
                //获取url地址的http链接Connection
                String page2Url="https://www.oschina.net/blog/widgets/_blog_index_recommend_list?classification="+type+"&p="+i+"&type=ajax";
                Connection conn = Jsoup.connect(page2Url)	//博客首页的url地址
                        .userAgent("Mozilla/5.0 (X11; U; Linux x86_64; zh-CN; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10")	//http请求的浏览器设置
                        .timeout(1000)   //http连接时长
                        .method(Connection.Method.GET);  //请求类型是get请求，http请求还是post,delete等方式
                //获取页面的html文档1
                try{
                    Document doc = conn.get();
                    Element body = doc.body();
                    Elements articleList = body.getElementsByClass("content");
                    for(Element article : articleList){
                        Article articleEntity = new Article();
                        //标题
                        Element linkNode = (article.select("div a")).get(0);
                        //文章简介
                        Element desptionNode = (article.getElementsByClass("line-clamp")).get(0);
                        //Element articleManageNode = (article.getElementsByClass("time")).get(0);
                        String readNum = (article.getElementsByClass("item")).get(2).text();
                        Element commentNum = (article.getElementsByClass("item")).get(4);

                        articleEntity.setAddress(linkNode.attr("href"));
                        articleEntity.setTitle(linkNode.text());
                        articleEntity.setDesption(desptionNode.text());
                        // articleEntity.setTime(articleManageNode.select("span:eq(0").text());
                        //阅读量
                        if("".equals(readNum)){
                            articleEntity.setReadNum(0);
                        }else {
                            if(readNum.contains("K")){
                                String rNum=readNum.replaceAll("K","");
                                float redNum=Float.parseFloat(rNum);
                                double readNums=redNum*1000;
                                articleEntity.setReadNum((int)readNums);
                            }else {
                                articleEntity.setReadNum(Integer.valueOf(readNum));
                            }
                        }
                        //评论
                        if("".equals(commentNum.text())){
                            articleEntity.setCommentNum(0);
                        }else {
                            articleEntity.setCommentNum(Integer.parseInt(commentNum.text()));
                        }
                        if("5611447".equals(type)){articleEntity.setType("ai");}
                        if("5593654".equals(type)){articleEntity.setType("cloud");}
                        if("428639".equals(type)){articleEntity.setType("cloud");}
                        if("5765988".equals(type)){articleEntity.setType("blockchain");}
                        if("428602".equals(type)){articleEntity.setType("mobile");}
                        if("428612".equals(type)){articleEntity.setType("web");}
                        if("428640".equals(type)){articleEntity.setType("engineering");}
                        if("429511".equals(type)){articleEntity.setType("game");}
                        if("428609".equals(type)){articleEntity.setType("lang");}
                        if("428610".equals(type)){articleEntity.setType("db");}
                        if("428613".equals(type)){articleEntity.setType("ops");}
                        if("6289115".equals(type)){articleEntity.setType("iot");}
                        if("428647".equals(type)){articleEntity.setType("avi");}
                        if("430381".equals(type)){articleEntity.setType("other");}
                        if("428638".equals(type)){articleEntity.setType("arch");}
                        articleEntity.setTime(new Date());
                        articleEntity.setBlogType("OSC");
                        articleEntity.setStatus(0);
//                    if(articleEntity.getReadNum()>300){
                        articleDao.save(articleEntity);
//                    }
                        System.out.println("文章阅读数++=:" + articleEntity.getReadNum());
                        System.out.println("文章地址++=:" + articleEntity.getAddress());
                        System.out.println("文章类型+++:" + articleEntity.getType());
                    }
                    //遍历输出ArrayList里面的爬取到的文章
                    System.out.println("文章总数+++++++++++++:" + articleList.size());
                    System.out.println("文章当前页数+++++++++++:" + articleList.size());
                    System.out.println("文章绝对路劲地址:oooooooooooooooo++++++++++++++++++++++++++++++");
                }catch (Exception e) {

                }
            }
        });
    }
}
