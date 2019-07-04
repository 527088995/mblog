/*
+--------------------------------------------------------------------------
|   Mblog [#RELEASE_VERSION#]
|   ========================================
|   Copyright (c) 2014, 2015 mtons. All Rights Reserved
|   http://www.mtons.com
|
+---------------------------------------------------------------------------
*/
package mblog.modules.blog.service.impl;

import mblog.base.lang.Consts;
import mblog.modules.blog.dao.BlogClassDao;
import mblog.modules.blog.entity.BlogClass;
import mblog.modules.blog.service.BlogClassService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author langhsu
 *
 */
@Service
@Transactional(readOnly = true)
public class BlogClassServiceImpl implements BlogClassService {
	@Autowired
	private BlogClassDao blogClassDao;

	@Override
	public List<BlogClass> findAll(int status) {
		List<BlogClass> list;
		if (status > Consts.IGNORE) {
			list = blogClassDao.findAllByStatus(status);
		} else {
			list = blogClassDao.findAll();
		}
		return list;
	}

	@Override
	public Map<Integer, BlogClass> findMapByIds(Collection<Integer> ids) {
		List<BlogClass> list = blogClassDao.findAllByIdIn(ids);
		Map<Integer, BlogClass> rets = new HashMap<>();
		list.forEach(po -> rets.put(po.getId(), po));
		return rets;
	}

	@Override
	public BlogClass getById(int id) {
		return blogClassDao.getOne(id);
	}

	@Override
	@Transactional
	public void update(BlogClass blogClass) {
		BlogClass po = blogClassDao.getOne(blogClass.getId());
		if (po != null) {
			BeanUtils.copyProperties(blogClass, po);
		} else {
			po = new BlogClass();
			BeanUtils.copyProperties(blogClass, po);
		}
		blogClassDao.save(po);
	}

	@Override
	@Transactional
	public void delete(int id) {
		blogClassDao.delete(id);
	}

}
