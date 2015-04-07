<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"  %>

<table class="table table-bordered table-hover table-striped">
  <tr>
    <th>User Id</th>
        <th>User Name</th>
    <th>User Email</th>
  </tr>
  <c:forEach items="${users}" var="user">
  <tr>
    <td><c:out value="${ user.id}"/></td>
     <td><a href='<spring:url value="/users/${user.id}.html"/>'><c:out value="${ user.firstName}"/></a></td>
    <td><c:out value="${ user.email}"/></td>
  </tr>
  </c:forEach>
</table>


