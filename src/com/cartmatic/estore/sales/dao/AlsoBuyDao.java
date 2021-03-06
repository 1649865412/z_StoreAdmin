package com.cartmatic.estore.sales.dao;

import java.util.List;

import com.cartmatic.estore.common.model.catalog.Product;
import com.cartmatic.estore.common.model.sales.AlsoBuy;
import com.cartmatic.estore.core.dao.GenericDao;
public interface AlsoBuyDao  extends GenericDao<AlsoBuy> {
	//自动评估 根据AlsoBuy规则[源Id=productId]获得特定范围的AlsoBuy产品(不能重复,而且必须是激活的)
	public List<Product> getProductsBySourceId(final Integer categoryId,final Integer productId,	final int firstResult, final int maxResults);
	//自动评估 根据AlsoBuy规则[源Id=productIdList]获得特定范围的AlsoBuy产品(不能重复,而且必须是激活的)
	public List<Product> getProductsBySourceIdList(final Integer categoryId,final List<Integer> productIds,	final int firstResult, final int maxResults);
	//根据productId和alsoProductId获得指定的AlsoBuy实体
	public AlsoBuy getAlsoBuyByProductIdByAlsoProductId(Integer productId,Integer alsoProductId);
	//根据给出的productId 移除所有相关的AlsoBuy实体,返回移除的个数
	public int removeAlsoBuyProductsByProductId(final Integer productId);
}
