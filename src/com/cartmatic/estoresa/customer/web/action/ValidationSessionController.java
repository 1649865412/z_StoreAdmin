package com.cartmatic.estoresa.customer.web.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindException;

import com.cartmatic.estore.common.model.customer.ValidationSession;
import com.cartmatic.estore.core.controller.GenericController;
import com.cartmatic.estore.customer.service.ValidationSessionManager;

public class ValidationSessionController extends GenericController<ValidationSession> {
    private ValidationSessionManager validationSessionManager = null;

    public void setValidationSessionManager(ValidationSessionManager inMgr) {
        this.validationSessionManager = inMgr;
    }

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.cartmatic.estore.core.controller.GenericController getEntityName(java.lang.Object)
	 */
	@Override
	protected String getEntityName(ValidationSession entity) {
		return entity.getValidationSessionName();
	}

	/**
	 * 构造批量更新所需的model。
	 * <P>
	 * 本来这方法对大部分情况也是可以自动分析和转换的，但考虑到比较复杂和难以灵活（验证、缺省值、I18N等、Status转换等），暂时要求各模块自己实现。要求数据要先转换为正确的类型。
	 * 
	 * @param request
	 * @return
	 */
	@Override
	protected Map<Integer, Map<String, Object>> getMultiSaveModel(HttpServletRequest request) {
		//FIXME
		throw new RuntimeException("Not implemented yet!");
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.cartmatic.estore.core.controller.BaseController#initController()
	 */
	@Override
	protected void initController() throws Exception {
		mgr = validationSessionManager;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.cartmatic.estore.core.controller.GenericController onSave(javax.servlet.http.HttpServletRequest,
	 *      java.lang.Object, org.springframework.validation.BindException)
	 */
	@Override
	protected void onSave(HttpServletRequest request, ValidationSession entity, BindException errors) {
	}

}
