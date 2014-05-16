<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%--<%@ include file="template/localHeader.jsp"%>--%>

<p>Hello ${user.systemId}!</p>

<openmrs:htmlInclude file="/moduleResources/surgerytrial/js/jquery.dataTables.js" />
<openmrs:htmlInclude file="/resources/css/dataTables.css" />
<%--<openmrs:htmlInclude file="/resources/js/jquery.dataTables.min.js" />--%>
<openmrs:htmlInclude file="/resources/js/jquery-ui.min.js" />

<script type="text/javascript">
    $j(document).ready(function() {
        $j('#myTable').dataTable({
            "bJQueryUI": true,
            "sPaginationType": "full_numbers"
        });
    } );
</script>

<table id="myTable">
    <thead>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Identifier</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="patient" items="${patients}" varStatus="status">
        <tr>
            <td><a href="encounter.form?patientId=${patient.patientId}" >${patient.personName.fullName}</a></td>
            <td>${patient.age}</td>
            <td>${patient.gender}</td>
            <td>${patient.identifiers}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="/WEB-INF/template/footer.jsp"%>