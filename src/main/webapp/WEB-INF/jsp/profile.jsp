<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"  %>

<table class="table" width="200px">
  <tr>
   
        <th colspan="2">User Profile</th>
   
  </tr>

  <tr>
    <td><c:out value="${ user.firstName}"/></td>
     <td><c:out value="${ user.lastName}"/></td>
   
  </tr>
 
</table>


