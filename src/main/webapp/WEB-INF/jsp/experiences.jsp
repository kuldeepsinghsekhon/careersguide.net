<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="../layout/taglib.jsp" %>
     <h3>Update Your Resume</h3>
<div class="container">

    <div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
               
             
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" ><span class="glyphicon glyphicon-user">
                            </span>Update Resume</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse">
                        <div class="panel-body" id="panel-boby">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a id="Snapshot" href="/resume-update.html">Snapshot</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a id="Employer" href="/experiences.html">Employer</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a id="Education" href="/education.html">Education</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a id="Skills" href="/skills.html">Skills</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-trash text-danger"></span><a href="#" class="text-danger">
                                            Update Resume</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
             
            </div>
        </div>
        <div class="col-sm-9 col-md-9" id="bodyDiv">
        <div class="alert alert-danger " hidden="true" id="message">
		<h4>Password does not match</h4>
		
		</div>
		<c:if test="${param.success eq true}">
		<div class="alert alert-success ">
		Registration Success full 
		<h6>Activate your Account</h6>
		<p>Please check your  mail and click on Verification Link To Activate your Account</p>
		</div>
		
		</c:if>	
		
		<div class="panel panel-default">
  <div class="panel-heading">Change password</div>
  <div class="panel-body">
     <form:form commandName="resume">
     <label>Designation</label>
<input name="experiences[0].title"/>
<label>Designation</label>
<input name="experiences[1].title" />
<button type="submit" >Submit</button>
</form:form>
</div>
</div>
</div>


