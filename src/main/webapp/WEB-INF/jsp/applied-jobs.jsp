<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h3>List of applied jobs</h3>

<table class="table table-bordered">

  <tr>
    <th>Job Id</th>
    <th>Job Title</th>
  </tr>
  <c:forEach items="${appliedJobs}" var="job">
  <tr>
    <td><c:out value="${job.job.id}"></c:out></td>
    <td><c:out value="${job.job.title}"></c:out></td>
  </tr>
  </c:forEach>
</table>









