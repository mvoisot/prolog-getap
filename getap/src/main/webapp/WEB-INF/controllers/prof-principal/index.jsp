<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<br/>
<br/>


<form:form modelAttribute="userSearchCriteria" action="dosearchForClasse"
	method="get">
	<form:errors path="*" cssClass="errors" />

	<div class="form-row">
		<label for="query">Les classes :</label>
		<div>
			<form:select path="query" items="${lesClasses}" itemValue="id" itemLabel="nom">
			</form:select>
		</div>
	</div>

	<br />

	<div id="buttonGroup">
		<a href="<c:url value="/app/admin/index" />"><input type="button"
			value="Retour"> </a> <input type="submit" value="Rechercher" />
	</div>
</form:form>