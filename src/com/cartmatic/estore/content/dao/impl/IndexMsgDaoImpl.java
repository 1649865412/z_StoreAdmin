
package com.cartmatic.estore.content.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.cartmatic.estore.common.model.content.IndexMsg;
import com.cartmatic.estore.content.dao.IndexMsgDao;
import com.cartmatic.estore.core.dao.impl.HibernateGenericDaoImpl;

/**
 * Dao implementation for Coupon.
 */
public class IndexMsgDaoImpl extends HibernateGenericDaoImpl<IndexMsg> implements
		IndexMsgDao {

	@Override
	public List<IndexMsg> findAllMsg(Integer status) {
		// TODO Auto-generated method stub
		String hql = "";
		if(status != null){
			hql = "from IndexMsg im where im.status=" + status;
		}else{
			hql = "from IndexMsg im";
		}
		List<IndexMsg> list = new ArrayList<IndexMsg>();
		list = this.findByHql(hql, null);
		return list;
	}
	
	
}
