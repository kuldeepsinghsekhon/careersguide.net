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
<div class="page-header"><h3 align="center">Update Your Resume Education</h3></div>
<div class="container">

    <div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
               
             
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" ><span class="glyphicon glyphicon-user">
                            </span>Update Resume </a>
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
	
		<h6>Success full </h6>
		
		</div>
		
		</c:if>	
		
		<div class="panel panel-default">
  <div class="panel-heading">Educational Detail</div>
  <div class="panel-body">
     <div class="bs-callout bs-callout-danger">
        <h4>Education</h4><!-- Button trigger modal -->
<button type="button" class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal">
 Add Education
</button>
        <table class="table table-striped table-responsive ">
          <thead>
            <tr><th>Degree</th><th>University</th>
            <th>Graduation Year</th>
            <th>CGPA</th>
          </tr></thead>
          <tbody>
           <c:forEach items="${educations}" var="education">
            <tr>
              <td> <c:out value='${education.courseName}'/></td>
               <td> <c:out value='${education.institution}'/></td>
              <td> <c:out value='${education.passingYear}'/></td>
              <td>  <c:out value='${education.marks}'/> </td>
            </tr>
            </c:forEach>	
          </tbody>
        </table>
      </div>
    </div>
   </div>

<!-- Modal -->
<form:form commandName="resume" class="form-horizontal" >
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Add Education</h4>
      </div>
      <div class="modal-body">
      

<div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">Course</label>
    <div class="col-sm-10">
     <input name="education[0].courseName"  class="form-control"/>
     
    </div>
  </div>
   <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">Specialization:</label>
    <div class="col-sm-10">
     <input name="education[0].specialization"  class="form-control"/>
     
    </div>
  </div>
   <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">University</label>
    <div class="col-sm-10">
     <input name="education[0].institution"  class="form-control"/>
     
    </div>
  </div>
   <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">Passout :</label>
    <div class="col-sm-10">
     <input name="education[0].passingYear"  class="form-control"/>
     
    </div>
  </div>
   <div class="form-group">
    <label for="firstName" class="col-sm-2 control-label">Percentage</label>
    <div class="col-sm-10">
     <input name="education[0].marks"  class="form-control"/>
     
    </div>
  </div>
  

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         <button type="submit" class="btn btn-primary">submit </button>
      </div>
    </div>
  </div>
</div>
</form:form>

			

</div>
</div>
</div>
</div>


    