<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table class="table table-bordered">

  <tr>
    <th>Job Id</th>
    <th>Job Title</th>
    <th>Exam ID</th>
    <th>Exam Date</th>
      <th>Exam Time</th>
  </tr>
  <c:forEach items="${appliedJobs}" var="job">
  <tr>
    <td><c:out value="${job.job.id}"></c:out></td>
    <td><c:out value="${job.job.title}"></c:out></td>
    <td><a href="/exam/${job.exam.id}/1.html"><c:out value="${job.exam.id}"/></a></td>
    <td><c:out value="${job.result}"></c:out></td>
  </tr>
  </c:forEach>
</table>


