<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		var del = "${requestScope.delete}"; 
		if (del == "true" ) {
			$(":input[type='text'],select[id='titleKindId']").each(function () { $(this).attr('readonly',true); });				
		}		
	});
	
</script>

<div class="hero-unit">
<html:errors/>${requestScope.action}
<html:form styleClass="form-horizontal" action="${requestScope.action}">
<html:hidden property="id"/>
<div class="control-group">
    <label class="control-label" for="name"><bean:message key="title.name"/></label>
    <div class="controls">
    	<html:text styleId="name" property="name"/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="author"><bean:message key="title.author"/></label>
    <div class="controls">
    	<html:text styleId="author" property="author"/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="name"><bean:message key="title.description"/></label>
    <div class="controls">
    	<html:text styleId="description" property="description"/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="isbn"><bean:message key="title.isbn"/></label>
    <div class="controls">
    	<html:text styleId="isbn" property="isbn"/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="publicationYear"><bean:message key="title.publicationYear"/></label>
    <div class="controls">
    	<html:text styleId="publicationYear" property="publicationYear"/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="editor"><bean:message key="title.editor"/></label>
    <div class="controls">
		<html:text styleId="editor" property="editor"/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="titleKindId"><bean:message key="title.titleKind"/></label>
    <div class="controls">

		<html:select styleId="titleKindId" property="titleKindId">
			<html:options collection="titleKinds" property="id" labelProperty="name"/>
		</html:select>
    </div>
</div>

<div class="control-group">
    <div class="controls">
      <button type="submit" class="btn btn-primary">
      	<c:choose>
      		<c:when test="${requestScope.delete eq 'true'}">
				<bean:message key="common.delete"/>
      		</c:when>
      		<c:otherwise>
      			<bean:message key="common.submit"/>
      		</c:otherwise>
      	</c:choose>	
      	
      </button>
    </div>
</div>
</html:form>
</div>