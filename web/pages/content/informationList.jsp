<%@ include file="/common/taglibs.jsp"%>
<%@ taglib prefix="cartmatic" tagdir="/WEB-INF/tags/cartmatic"%>
<%@ taglib prefix="search" tagdir="/WEB-INF/tags/search"%>
<app:pageHeading pageHeadingKey="informationList.heading" />
<content tag="buttons">
<cartmatic:cartmaticBtn btnType="create" inputType="button" onclick="return fnDoAdd(this);" />
<cartmatic:cartmaticBtn btnType="delete" onclick="return fnDoMultiDelete(this);" />
<cartmatic:cartmaticBtn btnType="cancel" inputType="button" onclick="return fnDoUpToParent(this);" />
</content>
<app:ui_leftMenu>
	<div class="sidebar-left">
		<form method="post" action="${ctxPath}/content/information.html" onsubmit="return false;">
			<app:ui_tabs tabsId="left_menu_tabs" />
			<div class="tab" id="left_menu_tabs">
				<ul>
					<li>
						<a href="#listSelectContent"><fmt:message key="yourposition.search" /> </a>
					</li>
				</ul>
				<div class="content" id="listSelectContent">
					<search:searchBox>
						<search:filter />
						<search:input attrPath="s.title" attrNameKey="information.title" datatype="String" operator="LIKE" classes="form-inputbox" onenter="true"/>
					</search:searchBox>
				</div>
			</div>
		</form>
	</div>
</app:ui_leftMenu>
<form class="mainForm" name="brandListForm" method="post" action="${ctxPath}/content/information.html">
	<!--listing box start-->
	<!--editURLPath is used in TblDecorator-->
	<c:set var="editURLPath" value="/content/information.html?doAction=edit&from=list" scope="page" />
	
		<c:set var="checkAll">
			<input type="checkbox" name="allbox" onclick="checkAll(this.form)" class="checkbox" />
		</c:set>
		<display:table name="${informationList}" cellspacing="0" cellpadding="0" uid="information" class="table-list" export="false" requestURI="">
			<display:column style="width: 1%" title="${checkAll}" media="html">
				<input type="checkbox" name="multiIds" value="${information.id}" class="checkbox" title="${information.id}" />
			</display:column>
			<display:column sortable="false" url="${editURLPath}" paramId="informationId" paramProperty="id" decorator="com.cartmatic.estore.core.decorator.TblColumnDecorator" titleKey="information.title">
				${information.title}
			</display:column>
			<display:column sortable="false" headerClass="data-table-title" title="赞的人数" decorator="com.cartmatic.estore.core.decorator.TblColumnDecorator">
				${information.likeCount}
			</display:column>
			<display:column sortable="false" headerClass="data-table-title" title="创建时间" decorator="com.cartmatic.estore.core.decorator.TblColumnDecorator">
					<fmt:formatDate value="${information.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
			</display:column>
			<display:column sortable="false" headerClass="data-table-title" title="更新时间" decorator="com.cartmatic.estore.core.decorator.TblColumnDecorator">
					<fmt:formatDate value="${information.updateTime}" pattern="yyyy-MM-dd HH:mm:ss" />
			</display:column>
		</display:table>
		<div class="blank10"></div>
		<%@ include file="/common/pagingOnlyNew.jsp"%>
</form>
