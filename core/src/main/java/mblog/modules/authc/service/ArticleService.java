package mblog.modules.authc.service;

import mblog.modules.authc.entity.Article;

public interface ArticleService {
    long save(Article article);
}
