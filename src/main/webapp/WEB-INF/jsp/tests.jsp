<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"  %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script type="text/javascript">
<!--
$(document).ready(function(){
	
});
//-->
</script>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Create Exam
</button>

<!-- Modal -->
<form:form commandName="test"  class="form-horizontal" >
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Create Exam</h4>
      </div>
      <div class="modal-body">
      

<div id="login-frm">
 <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">Name :</label>
    <div class="col-sm-10">
      <form:input path ="name"  class="form-control" />
    </div>
  </div>
   <div class="form-group">
    <label for="lastName" class="col-sm-2 control-label">Description</label>
    <div class="col-sm-10">
      <form:input path ="description"  class="form-control" />
    </div>
  </div>
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      </div>
  </div>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="submit" class="btn btn-primary">Create Exam</button>
      </div>
    </div>
  </div>
</div>
</form:form>
<h3>List of All Available Tests</h3>
<table class="table table-bordered table-hover table-striped">
  <tr>
    <th>Test Name</th>
        <th>Test Name</th>
    <th>Test Description</th>
     <th>Operations</th>
  </tr>
  <c:forEach items="${tests}" var="test">
  <tr>
    <td><c:out value="${test.name}"/></td>
     <td><a href='<spring:url value="/test/${test.id}.html"/>'><c:out value="${test.name}"/></a></td>
    <td><c:out value="${ test.description}"/></td>
    <td><a class="btn btn-danger" href='<spring:url value="/tests/remove/${test.id}.html"/>'>Remove</a></td>
  </tr>
  </c:forEach>
</table>
  
  
  
  
  
  
  
  






