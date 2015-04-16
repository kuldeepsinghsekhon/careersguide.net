<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"  %>
<table class="table">
<tr><th>Job Id</th><th>Job Title</th></tr>
<c:forEach items="${postedjobs}" var="job">

<tr><td><a href=''><c:out value="${job.id}"/></a></td><td><c:out value="${job.title}"/></td><td><a href='<spring:url value="/applies/${job.id}.html"/>'>View Applies</a></td></tr>



</c:forEach>

</table>