package mblog.task;

import mblog.modules.authc.entity.Article;
import mblog.modules.authc.service.ArticleService;
import mblog.modules.blog.service.BlogClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class TestTask1 {
    private int count=0;
    @Autowired
    private ArticleService articleService;

    @Scheduled(cron="* */1 * * * ?")
    private void process(){
        Article article=new Article();
        articleService.save(article);
        System.out.println("[" + Thread.currentThread().getName() + "]" + "this is scheduler task runing  "+(count++));
    }
}
