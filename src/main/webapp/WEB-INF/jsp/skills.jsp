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
		<h6>Success full</h6>
		</div>
		
		</c:if>	
		
		<div class="panel panel-default">
  <div class="panel-heading">Change password</div>
  <div class="panel-body">
  <!-- Button trigger modal -->
<button type="button" class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal">
 Add Skill
</button>
	<table class="table  table-striped table-responsive ">
          <thead>
            <tr><th>Name</th><th>Certification</th>
            <th>Passing year</th>
             <th>Version</th>
            <th>Personal Rating %</th>
          </tr></thead>
          <tbody>
           <c:forEach items='${skills}' var="skill">
            <tr>
              <td> <c:out value='${skill.skillName}'/></td>
               <td> <c:out value='${skill.certificationName}'/></td>
              <td> <c:out value='${skill.passingYear}'/></td>
              <td>  <c:out value='${skill.version}'/> </td>
              <td>  <c:out value='${skill.percentSkill}'/> </td>
            </tr>
            </c:forEach>	
          </tbody>
        </table>
        
        <!-- Modal -->
					<form:form commandName="resume" class="form-horizontal" >
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Add Prior Work
											Experiences</h4>
									</div>
									<div class="modal-body col-sm-12">			
 <div class="form-group col-sm-12">
					<label class="col-sm-4"> Name</label> 
					<form:input   path="skills[0].skillName"  class="form-control"/>
					
				</div>
    <div class="form-group col-sm-12">
					<label class="col-sm-4">Certification Name</label> 
					<form:input   path="skills[0].certificationName"  class="form-control" id="pass" value=""/>
					
				</div>
  <div class="form-group col-sm-12">
					<label class="col-sm-4"> Passing Year</label> 
					<form:input   path="skills[0].passingYear"  class="form-control" id="pass" value=""/>
					
				</div>
				<div class="form-group col-sm-12">
					<label class="col-sm-4"> Version</label> 
					<form:input   path="skills[0].version"  class="form-control" id="pass" value=""/>
					
				</div>
				<div class="form-group col-sm-12">
					<label class="col-sm-4">Self Rating</label> 
					<form:select   path="skills[0].percentSkill"  class="form-control" id="pass" value=""/>
				</div>
 

  </div>
  <div class="modal-footer  ">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="submit" class="btn btn-primary">submit
										</button>
									</div>
								</div>
							</div>
						</div>
  </form:form> 
</div>
</div>
</div>
</div>

 </div>  
     