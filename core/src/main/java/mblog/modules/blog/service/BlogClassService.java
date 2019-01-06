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

import mblog.modules.blog.entity.BlogClass;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * 栏目管理
 * 
 * @author langhsu
 *
 */
public interface BlogClassService {
	List<BlogClass> findAll(int status);
	Map<Integer, BlogClass> findMapByIds(Collection<Integer> ids);
	BlogClass getById(int id);
	void update(BlogClass BlogClass);
	void delete(int id);
}
