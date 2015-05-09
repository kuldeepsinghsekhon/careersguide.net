<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/taglib.jsp" %>
    <script type="text/javascript">

$(document).ready(function(){
	 $("#changePass").click(function(){
	        $("#bodyDiv").load("/pass.html", function(responseTxt, statusTxt, xhr){
	            if(statusTxt == "success")
	                alert("External content loaded successfully!");
	            if(statusTxt == "error")
	                alert("Error: " + xhr.status + ": " + xhr.statusText);
	        });
	    }  );
});
</script>
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
  
				
<form:form commandName="resume" class="form-horizontal" >
 
 <div class="form-group">
    <label for="description" class="col-sm-2 control-label">Summary</label>
    <div class="col-sm-10">
      <form:textarea path="summary"  class="form-control" value='${resume.summary}' />
    </div>
     </div>
       <div class="form-group">
    <label for="description" class="col-sm-2 control-label">Research Interests</label>
    <div class="col-sm-10">
      <form:textarea path="interests"  class="form-control" value='${resume.interests}' />
    </div>
     </div> 
  <div class="form-group">
    <label for="Current Company" class="col-sm-2 control-label">Current Company</label>
    <div class="col-sm-10">
      <form:input path="currentCompany"   class="form-control" value='${resume.currentCompany}' />
    </div>
  </div>
  <div class="form-group">
    <label for="Current Profile" class="col-sm-2 control-label">Current Profile</label>
    <div class="col-sm-10">
      <form:input path="currentProfile"   class="form-control" value='${resume.currentProfile}' />
    </div>
  </div>
  <div class="form-group">
    <label for="Current Salary" class="col-sm-2 control-label">Current Salary</label>
    <div class="col-sm-10">
      <form:input path="currentSalary"   class="form-control" value='${resume.currentSalary}' />
    </div>
  </div>
  
     <h3>Personal Information</h3>
     <hr>
     <br>
     <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">Name :</label>
    <div class="col-sm-10">
      <form:input path ="firstName"  class="form-control" value='${resume.firstName}' />
    </div>
  </div>
   <div class="form-group">
    <label for="lastName" class="col-sm-2 control-label">Last Name</label>
    <div class="col-sm-10">
      <form:input path ="lastName"  class="form-control" value='${resume.lastName}'/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <form:input path ="email"  class="form-control" value='${resume.email}'/>
    </div>
  </div>
     <div class="form-group">
    <label for="fatherName" class="col-sm-2 control-label">Father</label>
    <div class="col-sm-10">
      <form:input path ="fatherName"  class="form-control" value='${resume.fatherName}' />
    </div>
  </div>
   
  <div class="form-group">
    <label for="address" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-10">
      <form:textarea path="address"  class="form-control" value='${resume.address}'/>
    </div>
    </div>
   
      <div class="form-group">
    <label for="State" class="col-sm-2 control-label">State</label>
    <div class="col-sm-10">
      <form:input path ="state"  class="form-control" value='${resume.state}'/>
    </div>
  </div>
   <div class="form-group">
    <label for="city" class="col-sm-2 control-label">City</label>
    <div class="col-sm-10">
      <form:input path ="city"  class="form-control" value='${resume.city}' />
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Update Resume</button>
    </div>
  </div>



</form:form>
</div>
</div>
</div>
</div>
</div>
