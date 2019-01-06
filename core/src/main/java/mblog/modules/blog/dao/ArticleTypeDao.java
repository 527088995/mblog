/*
+--------------------------------------------------------------------------
|   Mblog [#RELEASE_VERSION#]
|   ========================================
|   Copyright (c) 2014, 2015 mtons. All Rights Reserved
|   http://www.mtons.com
|
+---------------------------------------------------------------------------
*/
package mblog.modules.blog.dao;

import mblog.modules.blog.entity.ArticleType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.Collection;
import java.util.List;

/**
 * @author langhsu
 *
 */
public interface ArticleTypeDao extends JpaRepository<ArticleType, Integer>, JpaSpecificationExecutor<ArticleType> {
	List<ArticleType> findAllByStatus(int status);
	List<ArticleType> findAllByIdIn(Collection<Integer> id);
	ArticleType findByKey(String key);
}
