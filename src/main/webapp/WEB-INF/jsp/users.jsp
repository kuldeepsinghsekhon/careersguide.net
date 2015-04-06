<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table>
  <tr>
    <th>User Id</th>
    <th>User Email</th>
  </tr>
  <c:forEach items="${users}" var="user">
  <tr>
    <td><c:out value="${ user.id}"/></td>
    <td><c:out value="${ user.email}"/></td>
  </tr>
  </c:forEach>
</table>


