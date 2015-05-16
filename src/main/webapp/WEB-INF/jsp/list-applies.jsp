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

 <div class="content">
 <div class="col-md-12">
        <div class="table-responsive">
<table class="table table-bordered  table-striped" id="mytable">
<tr>
 <th><input type="checkbox" id="checkall" /></th>
<th>User Email</th>
<th>UserID</th>
<th>Assign Exam</th>
<th>View Resume</th>
<th>Delete</th>
</tr>

<c:forEach items="${responses}" var="response">
 
<tr> <td><input type="checkbox" class="checkthis"  value='<c:out value="${response.id}"/>' />

<td><c:out value="${response.candidate.id}"/></td>
<td><c:out value="${response.candidate.email}"/></td>

<td></td>
<td><p data-placement="top" data-toggle="tooltip" title="Edit"><a class="btn btn-primary btn-xs" href="/resume/${response.candidate.id}.html" ><span class="glyphicon glyphicon-pencil"></span></a></p></td>
<td><form:form commandName="assigntest">userId<form:input path="userid" value="${response.candidate.id}"/>TestId <form:input path="testid" value="${response.exam.id}"/><button type="submit">Submit </button></form:form>
</td>
<td><c:out value="${response.result}"/></td>   
</tr>

</c:forEach>


</table>

<div class="clearfix"></div>
<ul class="pagination pull-right">
  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
</ul>
                
            </div>
        </div>    
        </div>
