package com.cartmatic.estore.content.service;

import java.util.List;

import com.cartmatic.estore.common.model.catalog.Brand;
import com.cartmatic.estore.common.model.content.Information;
import com.cartmatic.estore.core.service.GenericManager;

/**
 * Manager interface for Brand, responsible for business processing, and communicate between web and persistence layer.
 *
 */
public interface InformationManager extends GenericManager<Information> {
	
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
