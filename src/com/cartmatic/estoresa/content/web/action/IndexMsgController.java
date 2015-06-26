
package com.cartmatic.estoresa.content.web.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;

import com.cartmatic.estore.common.model.content.IndexMsg;
import com.cartmatic.estore.content.service.IndexMsgManager;
import com.cartmatic.estore.core.controller.GenericController;

public class IndexMsgController extends GenericController<IndexMsg> {

	private IndexMsgManager indexMsgManager;
	
	@Override
	protected void onShowForm(HttpServletRequest request, ModelAndView mv) {
		IndexMsg indexMsg = (IndexMsg)mv.getModel().get(formModelName);
		mv.addObject("indexMsg", indexMsg);
	}
	
	@Override
	protected String getEntityName(IndexMsg entity) {
		// TODO Auto-generated method stub
		return entity.getMsg();
	}

	@Override
	protected void onSave(HttpServletRequest request, IndexMsg entity, BindException errors) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected Map<Integer, Map<String, Object>> getMultiSaveModel(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void initController() throws Exception {
		// TODO Auto-generated method stub
		this.mgr = indexMsgManager;
	}

	public IndexMsgManager getIndexMsgManager() {
		return indexMsgManager;
	}

	public void setIndexMsgManager(IndexMsgManager indexMsgManager) {
		this.indexMsgManager = indexMsgManager;
	}

}
