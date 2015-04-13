<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h3>Update Your Resume</h3>
<form:form commandName="resume" class="form-horizontal" >
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
    <label for="description" class="col-sm-2 control-label">Summary</label>
    <div class="col-sm-10">
      <form:textarea path="summary"  class="form-control" />
    </div>
     </div>
     <h3>Personal Information</h3>
     <hr>
     <br>
     <div class="form-group">
    <label for="fatherName" class="col-sm-2 control-label">Father</label>
    <div class="col-sm-10">
      <form:input path ="fatherName"  class="form-control" />
    </div>
  </div>
   
  <div class="form-group">
    <label for="address" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-10">
      <form:textarea path="address"  class="form-control" />
    </div>
    </div>
   
      <div class="form-group">
    <label for="State" class="col-sm-2 control-label">State</label>
    <div class="col-sm-10">
      <form:input path ="state"  class="form-control" />
    </div>
  </div>
   <div class="form-group">
    <label for="city" class="col-sm-2 control-label">City</label>
    <div class="col-sm-10">
      <form:input path ="city"  class="form-control" />
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Update Resume</button>
    </div>
  </div>



</form:form>
    