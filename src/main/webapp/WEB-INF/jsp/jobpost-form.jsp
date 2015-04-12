<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form commandName="jobs" class="form-horizontal">
 <div class="form-group">
   <label for="title" class="col-sm-2 control-label">Title :</label>
    <div class="col-sm-10">
     <form:input path="title" class="form-control col-sm-2"/>
    </div>
  </div> 
   
  <div class="form-group">
    <label for="qualification" class="col-sm-2 control-label">Qualification</label>
    <div class="col-sm-10">
      <form:input path ="qualification"  class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label for="experienceMin" class="col-sm-2 control-label">Min Experience</label>
    <div class="col-sm-10">
      <form:input path ="experienceMin"  class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label for="experienceMax" class="col-sm-2 control-label">Max Experience</label>
    <div class="col-sm-10">
      <form:input path="experienceMax"  class="form-control" />
    </div>
     </div>
     <div class="form-group">
    <label for="description" class="col-sm-2 control-label">Job Description</label>
    <div class="col-sm-10">
      <form:textarea path="description"  class="form-control" />
    </div>
     </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>


</form:form>