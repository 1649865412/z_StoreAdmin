package com.cartmatic.estore.content.dao;

import java.util.List;

import com.cartmatic.estore.common.model.content.IndexMsg;
import com.cartmatic.estore.core.dao.GenericDao;


public interface IndexMsgDao extends GenericDao<IndexMsg> {
	
	public List<IndexMsg> findAllMsg(Integer status) ;

}