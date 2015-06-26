<%@ include file="/common/taglibs.jsp"%>
<%@ taglib prefix="cartmatic" tagdir="/WEB-INF/tags/cartmatic"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<app:pageHeading entityName="${information.title}" entityHeadingKey="informationDetail.heading" />
<content tag="buttons">
<cartmatic:cartmaticBtn btnType="save" onclick="return fnDoSave(this,'title');" />
<c:if test="${information.id!=null}">
	<cartmatic:cartmaticBtn btnType="delete" onclick="return fnDoDelete(this,'title');" />
</c:if>
<cartmatic:cartmaticBtn btnType="cancel" onclick="return fnDoCancelForm(this);" />
</content>
<app:showBindErrors bindPath="information.*" />
<form id="information" class="mainForm" action="${ctxPath}/content/information.html" method="post">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table-content">
		<tr>
			<th colspan="2">
				<fmt:message key="informationDetail.heading" /><input type="hidden" name="id" value="${information.id}" /> 
			</th>
		</tr>
		<tr>
			<td class="FieldLabel">
				新闻标题：
			</td>
			<td>
				<input class="Field400" type="text" name="title" id="title" value="<c:out value="${information.title}"/>" />
			</td>
	    </tr>
	    <tr>
	    	<td colspan="2"></td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				新闻关键词：
			</td>
			<td>
				<input class="Field400" type="text" name="keyword" id="keyword" value="<c:out value="${information.keyword}"/>" />
			</td>
	    </tr>
	    <tr>
	    	<td colspan="2"></td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				新闻来源：
			</td>
			<td>
				<input class="Field400" type="text" name="source" id="source" value="<c:out value="${information.source}"/>" />
			</td>
	    </tr>
	    <tr>
	    	<td colspan="2"></td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				编辑者：
			</td>
			<td>
				<input class="Field400" type="text" name="editor" id="editor" value="<c:out value="${information.editor}"/>" />
			</td>
	    </tr>
	    <tr>
	    	<td colspan="2"></td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				新闻描述：
			</td>
			<td>
				<textarea id="content" name="content" rows="6" cols="100" class="Field400">${information.content}</textarea>
			</td>
	    </tr>
	    <tr>
	    	<td colspan="2"></td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				新闻类型：
			</td>
			<td>
				<select id="type" name="type">
					<option value="1" <c:if test="${information.type==1 }">selected</c:if>>入驻品牌新闻</option>
					<option value="2" <c:if test="${information.type==2 }">selected</c:if>>时尚展览信息</option>
					<option value="3" <c:if test="${information.type==3 }">selected</c:if>>线下活动信息</option>
				</select>
			</td>
	    </tr>
	    <tr>
	    	<td colspan="2"></td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				新闻小图：
			</td>
			<td>
				<div style="float: left;">
					<cartmatic:img url="${information.image}" mediaType="other" id="iconImage" height="100" width="100"></cartmatic:img>
				</div>
				<div style="float: left; margin: 20px;">
					<span id="iconImageBtnPlaceHolderId"></span>
					<input type="hidden" id="image" name="image" value="${information.image}" />
					<br/>
					(推荐尺寸：入驻品牌新闻 242 * 231；时尚展览信息 208 * 126；线下活动信息 207 * 133)
					<cartmatic:iconBtn icon="cross" extraCss="negative" text="清空图片" onclick="$('iconImage').src='${ctxPath}/images/default/00.jpg';$j('#icon').val('');" />
				</div>
			</td>
	    </tr>
	    <tr>
	    	<td colspan="2"></td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				新闻大图：
			</td>
			<td>
				<div style="float: left;">
					<cartmatic:img url="${information.image2}" mediaType="other" id="logoImage" height="100" width="100"></cartmatic:img>
				</div>
				<div style="float: left; margin: 20px;">
					<span id="logoImageBtnPlaceHolderId"></span>
					<input type="hidden" id="image2" name="image2" value="${information.image2}" />
					<br/>
					(推荐宽度：301，在风尚中和相关专题中出现)
					<cartmatic:iconBtn icon="cross" extraCss="negative" text="清空图片" onclick="$('logoImage').src='${ctxPath}/images/default/00.jpg';$j('#logo').val('');" />
				</div>
			</td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				新闻内容：
			</td>
			<td>
				<textarea id="contentBody" name="contentBody" rows="18" cols="80" style="width: 99.5%">${information.contentBody}</textarea>
				<app:ui_htmlEditor textareaIds="contentBody" />
			</td>
	    </tr>
	    <tr>
	    	<td colspan="2"></td>
	    </tr>
	    <tr>
			<td class="FieldLabel">
				<StoreAdmin:label key="common.message.createTime" />
			</td>
			<td>
				<SPAN id="createTimeShow"><fmt:formatDate value="${information.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></SPAN>
				<input type="hidden" id="createTime" name="createTime" value="<fmt:formatDate value='${information.createTime}' pattern='yyyy-MM-dd HH:mm:ss'/>" />
			</td>
		</tr>
		<tr>
			<td class="FieldLabel">
				<StoreAdmin:label key="common.message.updateTime" />
			</td>
			<td>
				<SPAN id="updateTimeShow"><fmt:formatDate value="${information.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></SPAN>
				<input type="hidden" id="updateTime" name="updateTime" value="<fmt:formatDate value='${information.updateTime}' pattern='yyyy-MM-dd HH:mm:ss'/>" />
			</td>
		</tr>
	</table>
</form>
<cartmatic:swf_upload btnPlaceHolderId="iconImageBtnPlaceHolderId" uploadCategory="other" uploadFileTypes="*.jpg" fileInputId="image" previewImg="iconImage" ></cartmatic:swf_upload>
<cartmatic:swf_upload btnPlaceHolderId="logoImageBtnPlaceHolderId" uploadCategory="other" uploadFileTypes="*.jpg" fileInputId="image2" previewImg="logoImage" ></cartmatic:swf_upload>

