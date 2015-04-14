<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


  <h3><c:out value="${testdetail.name}"/></h3>
 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Add Question
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
      

<div id="login-frm">

<form:form commandName="question"  class="form-horizontal" >
 <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">Statement :</label>
    <div class="col-sm-10">
      <form:input path ="statement"  class="form-control" />
    </div>
  </div>
   <div class="form-group">
    <label for="Option" class="col-sm-2 control-label">Option</label>
    <div class="col-sm-10">
      <form:input path ="solution1"  class="form-control" />
    </div>
  </div>
   <div class="form-group">
    <label for="Option" class="col-sm-2 control-label">Option</label>
    <div class="col-sm-10">
      <form:input path ="solution2"  class="form-control" />
    </div>
  </div>
   <div class="form-group">
    <label for="Option" class="col-sm-2 control-label">Option</label>
    <div class="col-sm-10">
      <form:input path ="solution3"  class="form-control" />
    </div>
  </div>
   <div class="form-group">
    <label for="Option" class="col-sm-2 control-label">Option</label>
    <div class="col-sm-10">
      <form:input path ="solution4"  class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label for="rightsolution" class="col-sm-2 control-label">Solution</label>
    <div class="col-sm-10">
      <form:select path ="rightsolution"  class="form-control" >
     <form:option value="0" label="Select" />
            
      <form:option value="A">A</form:option>
      <form:option value="B">B</form:option>
      <form:option value="C">C</form:option>
      <form:option value="D">D</form:option>
      </form:select>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Create Exam</button>
    </div>
  </div>

</form:form>

</div>
 </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
 
  <c:forEach items="${testdetail.questions}" var="question">
   <table class="table table-bordered table-hover table-striped">
  
  
   <tr><td ><c:out value="${question.statement}"/></td></tr>
  <tr><td><c:out value="${question.solution1}"/></td></tr>
  <tr><td><c:out value="${question.solution2}"/></td></tr>
  <tr><td><c:out value="${question.solution3}"/></td></tr>
  <tr><td><c:out value="${question.solution4}"/></td></tr>
  <tr><td ><c:out value="Rght solution is   :${question.rightsolution}"/></td></tr>
   <tr></tr>
  </table>
  
  </c:forEach>
 
  
  

