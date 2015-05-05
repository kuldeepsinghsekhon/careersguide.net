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


    <script language="javascript">function addRow(tableID){var table=document.getElementById(tableID);var rowCount=table.rows.length;var row=table.insertRow(rowCount);var colCount=table.rows[0].cells.length;for(var i=0;i<colCount;i++){var newcell=row.insertCell(i);newcell.innerHTML=table.rows[0].cells[i].innerHTML;switch(newcell.childNodes[0].type){case"text":newcell.childNodes[0].value="";break;case"checkbox":newcell.childNodes[0].checked=false;break;case"select-one":newcell.childNodes[0].selectedIndex=0;break;}}}
function deleteRow(tableID){try{var table=document.getElementById(tableID);var rowCount=table.rows.length;for(var i=0;i<rowCount;i++){var row=table.rows[i];var chkbox=row.cells[0].childNodes[0];if(null!=chkbox&&true==chkbox.checked){if(rowCount<=1){alert("Cannot delete all the rows.");break;}
table.deleteRow(i);rowCount--;i--;}}}catch(e){alert(e);}}</script>
 
 
 
    <input value="Add Row" onclick="addRow('dataTable')" type="button">
 
    <input value="Delete Row" onclick="deleteRow('dataTable')" type="button">
 
    <table id="dataTable" border="1" width="350px">
        <tbody><tr>
            <td><input name="chk[]" type="checkbox"></td>
            <td><input name="txt[]" type="text"></td>
            <td>
                <select name="country[]">
                    <option value="in">India</option>
                    <option value="de">Germany</option>
                    <option value="fr">France</option>
                    <option value="us">United States</option>
                    <option value="ch">Switzerland</option>
                </select>
            </td>
        </tr>
    </tbody></table>




































































































    