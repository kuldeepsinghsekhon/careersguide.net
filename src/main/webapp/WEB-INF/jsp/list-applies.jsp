<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include  file="../layout/taglib.jsp"%>
<script type="text/javascript">
<!--
$(document).ready(function(){
	$("#mytable #checkall").click(function () {
	        if ($("#mytable #checkall").is(':checked')) {
	            $("#mytable input[type=checkbox]").each(function () {
	                $(this).prop("checked", true);
	            });

	        } else {
	            $("#mytable input[type=checkbox]").each(function () {
	                $(this).prop("checked", false);
	            });
	        }
	    });
	    
	    $("[data-toggle=tooltip]").tooltip();
	});
//-->
</script>

  <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
          Job Responses
           
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
 <div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">  Job Responses</h3><a class="btn btn-info pull-right" href='<spring:url value="/response/${examid}/result.html"/>' style="margin-left:20px;">Prepare Result</a><a class="btn btn-primary pull-right" href='<spring:url value="/export/${examid}.html"/>'>Download Excel</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered table-hover table-striped">
<tr>
 <th><input type="checkbox" id="checkall" /></th>
 <th>UserID</th>
<th>User Email</th>


<th>View Resume</th>
<th>Assign Exam ID</th>
<th>Result</th>
</tr>

<c:forEach items="${responses}" var="response">
 
<tr> <td><input type="checkbox" class="checkthis"  value='<c:out value="${response.id}"/>' />

<td><c:out value="${response.candidate.id}"/></td>
<td><c:out value="${response.candidate.email}"/></td>


<td><p data-placement="top" data-toggle="tooltip" title="Edit"><a class="btn btn-primary btn-xs" href="/resume/${response.candidate.id}.html" ><span class="glyphicon glyphicon-pencil"></span></a></p></td>
<td><form:form commandName="assigntest"><form:input type="hidden" path="userid" value="${response.candidate.id}"/> <form:input path="testid" value="${response.exam.id}"/><button type="submit">Submit </button></form:form>
</td>
<td><c:out value="${response.result}"/></td>   
</tr>

</c:forEach>


</table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div><!-- /.box -->
          
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
