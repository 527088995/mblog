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
import mblog.modules.blog.dao.ArticleTypeDao;
import mblog.modules.blog.entity.ArticleType;
import mblog.modules.blog.service.ArticleTypeService;
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
public class ArticleTypeServiceImpl implements ArticleTypeService {
	@Autowired
	private ArticleTypeDao articleTypeDao;

	@Override
	public List<ArticleType> findAll(int status) {
		List<ArticleType> list;
		if (status > Consts.IGNORE) {
			list = articleTypeDao.findAllByStatus(status);
		} else {
			list = articleTypeDao.findAll();
		}
		return list;
	}

	@Override
	public Map<Integer, ArticleType> findMapByIds(Collection<Integer> ids) {
		List<ArticleType> list = articleTypeDao.findAllByIdIn(ids);
		Map<Integer, ArticleType> rets = new HashMap<>();
		list.forEach(po -> rets.put(po.getId(), po));
		return rets;
	}

	@Override
	public ArticleType getById(int id) {
		return articleTypeDao.getOne(id);
	}

	@Override
	@Transactional
	public void update(ArticleType articleType) {
		ArticleType po = articleTypeDao.getOne(articleType.getId());
		if (po != null) {
			BeanUtils.copyProperties(articleType, po);
		} else {
			po = new ArticleType();
			BeanUtils.copyProperties(articleType, po);
		}
		articleTypeDao.save(po);
	}

	@Override
	@Transactional
	public void delete(int id) {
		articleTypeDao.deleteById(id);
	}

}
