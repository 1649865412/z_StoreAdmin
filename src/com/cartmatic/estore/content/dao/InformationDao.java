package com.cartmatic.estore.content.dao;

import java.util.List;

import com.cartmatic.estore.common.model.content.Information;
import com.cartmatic.estore.core.dao.GenericDao;
/**
 * Dao interface for Information.
 */
public interface InformationDao extends GenericDao<Information> {
	
	/**
	 * 获得最近添加的资讯信息
	 * @param pageNo
	 * @param pageSize
	 * @param type
	 * @return
	 */
	public List<Information> getSinceInformation(Integer pageNo, Integer pageSize, Integer type, String keyword);
	
	/**
	 * 获得最热门的信息
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public List<Information> getHotInformation(final Integer pageNo, final Integer pageSize); 

}