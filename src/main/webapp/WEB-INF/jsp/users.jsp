<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"  %>
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".triggerRemove").click(function(e){
		e.preventDefault();
		$("#modalRemove .removeBtn").attr("href",$(this).attr("href"));
		$("#modalRemove").modal();
		});});


</script>
<div class="container">
<h3>Users List</h3>
<table class="table table-bordered table-hover table-striped">
  <tr>
    <th>User Id</th>
        <th>User Name</th>
    <th>User Email</th>
     <th>Operations</th>
  </tr>
  <c:forEach items="${users}" var="user">
  <tr>
    <td><c:out value="${ user.id}"/></td>
     <td><a href='<spring:url value="/users/${user.id}.html"/>'><c:out value="${ user.firstName}"/></a></td>
    <td><c:out value="${ user.email}"/></td>
    <td><a class="btn btn-danger triggerRemove" href='<spring:url value="/users/remove/${user.id}.html"/>'>Remove</a></td>
  </tr>
  </c:forEach>
</table>

<!-- Modal -->
<div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Remove User</h4>
      </div>
      <div class="modal-body">
        Realy want to Remove User !
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <a href=""  class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>
</div>