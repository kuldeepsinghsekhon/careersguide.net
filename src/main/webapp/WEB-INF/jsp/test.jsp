<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ include  file="../layout/taglib.jsp"%>

 <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           Create Exams 
         
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>
<section class="content">
        <!-- Main content -->
    <button type="button" class="btn btn-primary " data-toggle="modal"
	data-target="#myModal">New Question</button>

<form:form commandName="addquestion" class="form-horizontal addQuestionForm">
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
							<label for="statement" class="col-sm-2 control-label">Statement</label>
							<div class="col-sm-10">
								<form:input path="statement" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="solution1" class="col-sm-2 control-label">Option A</label>
							<div class="col-sm-10">
								<form:input path="solution1" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="solution2" class="col-sm-2 control-label">Option B</label>
							<div class="col-sm-10">
								<form:input path="solution2" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="solution3" class="col-sm-2 control-label">Option C</label>
							<div class="col-sm-10">
								<form:input path="solution3" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="solution4" class="col-sm-2 control-label">Option D</label>
							<div class="col-sm-10">
								<form:input path="solution4" class="form-control" />
							</div>
						</div>
						<div class=" form-group">
					<label for="marks" class="control-label col-sm-2">Marks</label> 
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
<div class="container">
<c:forEach items="${questions}" var="question">
<div class="col-md-11">
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

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

<script type="text/javascript">
<!-- 
$(document).ready(function(){
	$(".addQuestionForm").validate(
			{
				rules:{
					
					statement:{
							required:true,
							minlength:5
							},
							solution1:{
								required:true,
								minlength:3
								},
								solution2:{
									required:true,
									minlength:3
									},
									solution3:{
										required:true,
										minlength:3
										},
										solution4:{
											required:true,
											minlength:3
											},
											marks:{
												required:true,
												minlength:1
												},
											rightsolution:{
								required:true,
								minlength:1
								}
								
					},
					highlight:function(element){
						$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
						},
						unhighlight:function(element){
							$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
							}
			}

		);	
});
-->
</script>
