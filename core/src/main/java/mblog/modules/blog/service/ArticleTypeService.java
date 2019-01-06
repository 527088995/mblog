/*
+--------------------------------------------------------------------------
|   Mblog [#RELEASE_VERSION#]
|   ========================================
|   Copyright (c) 2014, 2015 mtons. All Rights Reserved
|   http://www.mtons.com
|
+---------------------------------------------------------------------------
*/
package mblog.modules.blog.service;

import mblog.modules.blog.entity.ArticleType;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * 栏目管理
 * 
 * @author langhsu
 *
 */
public interface ArticleTypeService {
	List<ArticleType> findAll(int status);
	Map<Integer, ArticleType> findMapByIds(Collection<Integer> ids);
	ArticleType getById(int id);
	void update(ArticleType ArticleType);
	void delete(int id);
}
