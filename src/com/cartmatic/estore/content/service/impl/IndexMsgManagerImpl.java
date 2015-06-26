
package com.cartmatic.estore.content.service.impl;

import java.util.List;

import com.cartmatic.estore.common.model.content.IndexMsg;
import com.cartmatic.estore.content.dao.IndexMsgDao;
import com.cartmatic.estore.content.service.IndexMsgManager;
import com.cartmatic.estore.core.service.impl.GenericManagerImpl;

/**
 * Manager implementation for Coupon, responsible for business processing, and
 * communicate between web and persistence layer.
 */
public class IndexMsgManagerImpl extends GenericManagerImpl<IndexMsg> implements
		IndexMsgManager {
	
	private IndexMsgDao indexMsgDao;

	@Override
	protected void initManager() {
		// TODO Auto-generated method stub
		this.dao = indexMsgDao;
	}

	@Override
	protected void onDelete(IndexMsg entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onSave(IndexMsg entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<IndexMsg> getAllMsg(Integer status) {
		// TODO Auto-generated method stub
		return this.getIndexMsgDao().findAllMsg(status);
	}

	public IndexMsgDao getIndexMsgDao() {
		return indexMsgDao;
	}

	public void setIndexMsgDao(IndexMsgDao indexMsgDao) {
		this.indexMsgDao = indexMsgDao;
	}

}
