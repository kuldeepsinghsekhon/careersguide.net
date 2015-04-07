<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>







<form:form commandName="usercorp" class="form-horizontal">
 <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">Name :</label>
    <div class="col-sm-10">
      <form:input path ="firstName"  class="form-control" />
    </div>
  </div>
   <div class="form-group">
    <label for="lastName" class="col-sm-2 control-label">Last Name</label>
    <div class="col-sm-10">
      <form:input path ="lastName"  class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <form:input path ="email"  class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <form:input path="password" type="password" class="form-control" />
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Register</button>
    </div>
  </div>


</form:form>