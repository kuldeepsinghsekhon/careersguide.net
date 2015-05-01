<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
 <div class="col-md-12">
        <h4>Candidates Applied For Job  Job Id </td><td><c:out value="${candidate.job.id}"/></td></h4>
        <div class="table-responsive">
<table class="table table-bordered  table-striped" id="mytable">
<tr>
 <th><input type="checkbox" id="checkall" /></th>
<th>User Email</th>
<th>UserID</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<c:forEach items="${candidates}" var="candidate">

<tr> <td><input type="checkbox" class="checkthis" />

<td><c:out value="${candidate.candidate.id}"/></td>
<td><c:out value="${candidate.candidate.email}"/></td>
<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
<td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
   
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
