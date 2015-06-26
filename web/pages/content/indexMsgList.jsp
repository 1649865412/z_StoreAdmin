<%@ include file="/common/taglibs.jsp"%>
<%@ taglib prefix="content" tagdir="/WEB-INF/tags/content"%>
<app:pageHeading pageHeadingKey="indexMsgList.heading" />

<content tag="buttons">
	<cartmatic:cartmaticBtn btnType="create" inputType="button" onclick="return fnDoAdd(this);" />
	<!--<cartmatic:cartmaticBtn btnType="save" onclick="return fnDoMultiSave(this);" />-->
	<cartmatic:cartmaticBtn btnType="delete" onclick="return fnDoMultiDelete(this);" />
</content>

<app:ui_leftMenu>
	<div class="sidebar-left">
	    <form method="post" action="${ctxPath}/content/indexMsg.html" onsubmit="return false;">
			<app:ui_tabs tabsId="left_menu_tabs"/>
		    <div class="tab" id="left_menu_tabs">
			    <ul>
					<li><a href="#listSelectContent"><fmt:message key="yourposition.search"/></a></li>
				</ul>
				<div class="content" id="listSelectContent">
					<search:searchBox>
						状态：
						<select name="COL@s.status@Integer@EQ" id="status" style="width:150px">
							<option value=""></option>
							<option value="1">激活</option>
							<option value="0">非激活</option>
						</select>
					</search:searchBox>
				</div>
			</div>
		</form>
	</div>
</app:ui_leftMenu>
<form class="mainForm" name="indexMsgListForm" method="post" action="${ctxPath}/content/indexMsg.html">
	<!--listing box start-->
	<!--editURLPath is used in TblDecorator-->
	<c:set var="editURLPath" value="/content/indexMsg.html?doAction=edit&from=list" scope="page" />
		<c:set var="checkAll"><input type="checkbox" name="allbox" onclick="checkAll(this.form)" class="checkbox"/></c:set>
		<display:table name="${indexMsgList}" cellspacing="0" cellpadding="0" uid="item"
			class="table-list"  style="table-layout:fixed;" export="false" requestURI="">
			<display:column headerClass="w30" class="w30" title="${checkAll}" media="html">
				<input type="checkbox" name="multiIds" value="${item.id}" class="checkbox" title="${item.id}"/>
			</display:column>

			<display:column headerClass="wauto" class="wauto" sortable="false" url="${editURLPath}" paramId="indexMsgId" paramProperty="id"
				decorator="com.cartmatic.estore.core.decorator.TblColumnDecorator" titleKey="indexMsg.msg">
				${item.msg}
			</display:column>

			<display:column media="html" sortable="false" headerClass="w100" class="w100" decorator="com.cartmatic.estore.core.decorator.TblColumnDecorator" titleKey="indexMsg.status">
				<c:choose>
					<c:when test="${item.status eq 1}">
						激活
					</c:when>
					<c:otherwise>
						非激活
					</c:otherwise>
				</c:choose>
		</display:column>
	</display:table>
		<%@include file="/common/pagingOnlyNew.jsp"%>
</form>
