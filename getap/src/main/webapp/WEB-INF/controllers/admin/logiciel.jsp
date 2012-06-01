<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<br />

<h5 style="position: relative; top: 35px;">Administration</h5>
<div id="accordion">
	<h3>
		<a href="#">Gestion des aides personnalisées</a>
	</h3>
	<div>
		<table>
			<tr>
				<form:form modelAttribute="formAjoutAp" action="doajoutAP"
					method="post" id="formulaireAjoutAP">
					<form:errors path="*" cssClass="errors" />

					<div class="section inputPerso">
						<fieldset>
							<div class="form-row">
								<label for="nom">Nouvelle aide personnalisée :</label>
								<div class="input">
									<form:input path="nom" />
									<input type="submit" value="Ajouter" />
								</div>
							</div>
						</fieldset>
					</div>
				</form:form>
			</tr>
			<table class="legend2">
				<tr>
					<td><img src="../../images/modif.png" width="24" height="24"/> : Modifier</td>
					<td><img src="../../images/suppr.png" width="24" height="24"/> : Supprimer</td>
				</tr>
			</table>
			<tr>
				<table class="display dataTable">
					<thead>
						<tr class="header">
							<th>Nom</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${lesAP}" var="ap">
							<tr>
								<td>${ap.nom}</td>
								<td><a
									href="<c:url value="/app/admin/editAp?id=${ap.id}" />"><img
										src="../../images/modif.png" width="24" height="24"
										onmouseover="this.src='../../images/modifHover.png';"
										onmouseout="this.src='../../images/modif.png';" /> </a></td>
								<td><a href="<c:url value="/app/admin/deleteAP/${ap.id}"/>"><img
										src="../../images/suppr.png" width="24" height="24"
										onmouseover="this.src='../../images/supprHover.png';"
										onmouseout="this.src='../../images/suppr.png';" /> </a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</tr>
		</table>
	</div>
	<h3>
		<a href="#">Gestion des classes</a>
	</h3>
	<div>
		<form:form modelAttribute="formAjoutClasse" action="doajoutClasse"
			method="post">
			<form:errors path="*" cssClass="errors" />

			<div class="section inputPerso">
				<fieldset>
					<div class="form-row">
						<label for="nom">Nouvelle Classe :</label>
						<div class="input">
							<form:input path="nom" />
							<input type="submit" value="Ajouter" />
						</div>
					</div>
				</fieldset>
			</div>
		</form:form>
		<table class="legend2">
			<tr>
				<td><img src="../../images/modif.png" width="24" height="24"/> : Modifier</td>
				<td><img src="../../images/suppr.png" width="24" height="24"/> : Supprimer</td>
			</tr>
		</table>
		<tr>
			<table class="display dataTable">
				<thead>
					<tr class="header">
						<th>Nom</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lesClasses}" var="classe">
						<tr>
							<td>${classe.nom}</td>
							<td><a
								href="<c:url value="/app/admin/editClasse?id=${classe.id}" />"><img
									src="../../images/modif.png" width="24" height="24"
									onmouseover="this.src='../../images/modifHover.png';"
									onmouseout="this.src='../../images/modif.png';" /> </a></td>
							<td><a
								href="<c:url value="/app/admin/deleteClasse/${classe.id}"/>"><img
									src="../../images/suppr.png" width="24" height="24"
									onmouseover="this.src='../../images/supprHover.png';"
									onmouseout="this.src='../../images/suppr.png';" /> </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</tr>
	</div>
	<h3>
		<a href="#">Gestion des disciplines</a>
	</h3>
	<div>
		<form:form modelAttribute="formAjoutDiscipline"
			action="doajoutDiscipline" method="post">
			<form:errors path="*" cssClass="errors" />

			<div class="section inputPerso">
				<fieldset>
					<div class="form-row">
						<label for="nom">Nouvelle Discipline :</label>
						<div class="input">
							<form:input path="nom" />
							<input type="submit" value="Ajouter" />
						</div>
					</div>
				</fieldset>
			</div>
		</form:form>
		<table class="legend2">
			<tr>
				<td><img src="../../images/modif.png" width="24" height="24"/> : Modifier</td>
				<td><img src="../../images/suppr.png" width="24" height="24"/> : Supprimer</td>
			</tr>
		</table>
		<tr>
			<table class="display dataTable">
				<thead>
					<tr class="header">
						<th>Nom</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lesDisciplines}" var="dis">
						<tr>
							<td>${dis.nom}</td>
							<td><a
								href="<c:url value="/app/admin/editDiscipline?id=${dis.id}" />"><img
									src="../../images/modif.png" width="24" height="24"
									onmouseover="this.src='../../images/modifHover.png';"
									onmouseout="this.src='../../images/modif.png';" /> </a></td>
							<td><a
								href="<c:url value="/app/admin/deleteDiscipline/${dis.id}"/>"><img
									src="../../images/suppr.png" width="24" height="24"
									onmouseover="this.src='../../images/supprHover.png';"
									onmouseout="this.src='../../images/suppr.png';" /> </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</tr>
	</div>
</div>