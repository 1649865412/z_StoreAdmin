<%@ include file="/common/taglibs.jsp"%>
<%@ taglib prefix="content" tagdir="/WEB-INF/tags/content"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/catalog"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<app:pageHeading entityName="${indexMsg.msg}" entityHeadingKey="indexMsgDetail.heading" />

<content tag="buttons">
	<cartmatic:cartmaticBtn btnType="save" onclick="return fnDoSave(this,'indexMsg');" />
    <c:if test="${indexMsg.id!=null}">
		<cartmatic:cartmaticBtn btnType="delete" onclick="return fnDoDelete(this,'indexMsg');" />
	</c:if>
	<cartmatic:cartmaticBtn btnType="cancel" onclick="return fnDoCancelForm(this);" />
</content>

	<form:form method="post" cssClass="mainForm" id="indexMsg" commandName="indexMsg"
			action="${ctxPath}/content/indexMsg.html">
			
		<form:hidden path="version" />
		<input type="hidden" name="id" value="${indexMsg.id}"/> 
		
		<table class="table-content" cellSpacing="0" cellPadding="0" width="100%" border="0">
		<tr>
			<th colspan="2">
				<fmt:message key="indexMsgDetail.heading" /> 
			</th>
		</tr>
		<tr>
	    	<td colspan="2"></td>
	    </tr>
 		<app:input property="msg" />
 		<tr>
	    	<td colspan="2"></td>
	    </tr>
 		<app:input property="url" />
 		<tr>
	    	<td colspan="2"></td>
	    </tr>
		<tr>
			<td class="FieldLabel">
				激活
			</td>
			<td>
					<input type="checkbox" onclick="ChangeValueOfStatus(this,'status')"  <c:if test="${indexMsg.status == 1 }">checked</c:if> />
					<input type="hidden" name="status" id="status" value="1" />
			</td>
		</tr>
		<tr>
	    	<td colspan="2"></td>
	    </tr>
  	</table>
</form:form>

<script type="text/javascript">
function ChangeValueOfStatus(checkbox,persistInput)
{
    if (checkbox.checked==true)
    {
      	$(persistInput).value = 1;
    }
    else
    {
      	$(persistInput).value = 2;
    }
}
</script>
