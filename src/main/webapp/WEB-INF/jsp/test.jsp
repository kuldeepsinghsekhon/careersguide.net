<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ include  file="../layout/taglib.jsp"%>

<div class="container">
<div class="page-header"><h2 align="center">Exam Preview</h2><button type="button" class="btn btn-primary " data-toggle="modal"
	data-target="#myModal">New Question</button></div>

<form:form commandName="addquestion" class="form-horizontal">
	<!-- Modal -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">New Question</h4>
				</div>
				<div class="modal-body">


					<div id="login-frm">


						<div class="form-group">
							<label for="firstName" class="col-sm-2 control-label">Statement</label>
							<div class="col-sm-10">
								<form:input path="statement" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="Option" class="col-sm-2 control-label">Option A</label>
							<div class="col-sm-10">
								<form:input path="solution1" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="Option" class="col-sm-2 control-label">Option B</label>
							<div class="col-sm-10">
								<form:input path="solution2" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="Option" class="col-sm-2 control-label">Option C</label>
							<div class="col-sm-10">
								<form:input path="solution3" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="Option" class="col-sm-2 control-label">Option D</label>
							<div class="col-sm-10">
								<form:input path="solution4" class="form-control" />
							</div>
						</div>
						<div class=" form-group">
					<label class="control-label col-sm-2">Marks</label> 
					<div class="col-sm-10">
					<form:select   path="marks"  class="form-control" id="pass" value="">
					<form:option value="0" label="Select Marks" />
					
 <c:forEach var="i" begin="1" end="5">
  <form:option value='${i}'>${i}</form:option>
</c:forEach> 
							
						</form:select>
						</div>
				</div>
						<div class="form-group">
							<label for="rightsolution" class="col-sm-2 control-label">Solution</label>
							<div class="col-sm-10">
								<form:select path="rightsolution" class="form-control">
									<form:option value="0" label="Select" />

									<form:option value="A">A</form:option>
									<form:option value="B">B</form:option>
									<form:option value="C">C</form:option>
									<form:option value="D">D</form:option>
								</form:select>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Add Question</button>
				</div>
			</div>
		</div>
	</div>
</form:form>


<c:forEach items="${questions}" var="question">
	<div class="col-md-12">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">
					<span class="glyphicon glyphicon-circle-arrow-right"></span>
					<c:out value="${question.statement}" />
				</h3>
			</div>
			<div class="panel-body two-col">
				<div class="row">
					<div class="col-md-6">
						<div class="well well-sm">
							<div class="checkbox">
								<label> <input type="checkbox" value=""> <c:out
										value="${question.solution1}" />
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="well well-sm">
							<div class="checkbox">
								<label> <input type="checkbox" value=""> <c:out
										value="${question.solution2}" />
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="well well-sm margin-bottom-none">
							<div class="checkbox">
								<label> <input type="checkbox" value=""> <c:out
										value="${question.solution3}" />
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="well well-sm margin-bottom-none">
							<div class="checkbox">
								<label> <input type="checkbox" value=""> <c:out
										value="${question.solution4}" />
								</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-footer">
				Solution <c:out value="${question.rightsolution}" />
			</div>
		</div>
	</div>
</c:forEach>

</div>
