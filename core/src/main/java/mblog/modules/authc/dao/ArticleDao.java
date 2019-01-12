package mblog.modules.authc.dao;

import mblog.modules.authc.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface ArticleDao extends JpaRepository<Article, Long>, JpaSpecificationExecutor<Article> {
}
