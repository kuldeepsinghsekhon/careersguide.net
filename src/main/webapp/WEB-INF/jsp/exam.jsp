<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<script type="text/javascript">



document.onkeydown = function (e) {
        if(e.which < 300){
                return false;
        }
}



</script>

<div class="container">
<div class="page-header"><h2 align="center">Exam For The Post Of  Software Engg.</h2></div>
<c:forEach items="${questions}" var="question">
	<form:form commandName="answers">
		<div class="col-md-10">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-circle">${pn}.Question:
						</span>
						<c:out value="${question.statement}" />
					</h3>
				</div>

				<div class="panel-body two-col">
					<div class="row">
						<div class="col-md-6">
							<div class="well well-sm">
								<div class="checkbox">
									<label>A) <c:out value="${question.solution1}" />
									</label>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="well well-sm">${i}
								<div class="checkbox">
									<label> B) <c:out value="${question.solution2}" />
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="well well-sm margin-bottom-none">
								<div class="checkbox">
									<label>C) <c:out value="${question.solution3}" />
									</label>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="well well-sm margin-bottom-none">
								<div class="checkbox">
									<label> D) <c:out value="${question.solution4}" />
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="panel-footer">
					<label class="col-sm-2">Answer</label>
					<form:select path="answer" class="col-sm-4">
						<form:option value=" " label="Select" />

						<form:option value="A">A</form:option>
						<form:option value="B">B</form:option>
						<form:option value="C">C</form:option>
						<form:option value="D">D</form:option>

					</form:select>
					<button type="submit" class="btn btn-success btn-sm "style="margin-left: 10px;">
						<span class="glyphicon glyphicon-ok"></span>Submit
					</button>
					
				</div>
			</div>
		</div>
	</form:form>
</c:forEach>

<div class="col-md-2">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">Question Numbers</h3>
		</div>
		<div style="height: 300px;">
			<c:forEach var="i" begin="1" end="${qn.size()}">
				<a href="/exam/${id}/${i}.html" class="btn  btn-info"><c:out
						value="${i}" /></a>

			</c:forEach>
		</div>
		<div class="panel-footer"></div>
	</div>
</div>

</div>