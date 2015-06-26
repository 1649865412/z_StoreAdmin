package com.cartmatic.estore.content.service.impl;

import java.util.List;

import com.cartmatic.estore.common.model.content.Information;
import com.cartmatic.estore.content.dao.InformationDao;
import com.cartmatic.estore.content.service.InformationManager;
import com.cartmatic.estore.core.service.impl.GenericManagerImpl;


/**
 * Manager implementation for Brand, responsible for business processing, and communicate between web and persistence layer.
 */
public class InformationManagerImpl extends GenericManagerImpl<Information> implements InformationManager {

	private InformationDao informationDao;
	
	@Override
	protected void initManager() {
		// TODO Auto-generated method stub
		this.dao = this.informationDao;
	}

	@Override
	protected void onDelete(Information entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void onSave(Information entity) {
		// TODO Auto-generated method stub
		
	}

	public InformationDao getInformationDao() {
		return informationDao;
	}

	public void setInformationDao(InformationDao informationDao) {
		this.informationDao = informationDao;
	}

	@Override
	public List<Information> getSinceInformation(Integer pageNo, Integer pageSize, Integer type, String keyword) {
		// TODO Auto-generated method stub
		return this.informationDao.getSinceInformation(pageNo, pageSize, type, keyword);
	}

	@Override
	public List<Information> getHotInformation(Integer pageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		return this.informationDao.getHotInformation(pageNo, pageSize);
	}


}
