
package com.cartmatic.estore.content.service;

import java.util.List;

import com.cartmatic.estore.common.model.content.IndexMsg;
import com.cartmatic.estore.core.service.GenericManager;

public interface IndexMsgManager extends GenericManager<IndexMsg> {

	public List<IndexMsg> getAllMsg(Integer status);
}
