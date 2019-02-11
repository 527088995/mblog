package mblog.modules.authc.service;

import mblog.modules.authc.entity.Article;

public interface ArticleService {
    long saveOscUrl();
    long saveOsc();
    long saveCsdnUrl();
    long saveCsdn();

}
