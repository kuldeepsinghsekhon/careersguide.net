<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h3>Candidates Applied For Job </h3>
<table class="table">
<tr><th>Job Id</th><th>User Id</th><th>User Email</th></tr>
<c:forEach items="${candidates}" var="candidate">

<tr><td><c:out value="${candidate.job.id}"/></td><td><c:out value="${candidate.candidate.id}"/></td><td><c:out value="${candidate.candidate.email}"/></td></tr>

</c:forEach>



</table>