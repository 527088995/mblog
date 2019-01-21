package mblog.modules.authc.dao;

import mblog.modules.authc.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ArticleDao extends JpaRepository<Article, Long>, JpaSpecificationExecutor<Article> {

    List<Article> findTop100ByBlogTypeAndStatus(String blogFrom,int status);

    @Modifying
    @Query("update Article set status = :status where id = :id")
    void updateStatus(@Param("id") long id, @Param("status") int status);
}
