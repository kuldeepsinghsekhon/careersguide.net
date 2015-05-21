<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>
<div class="container">
 <div class="page-header"><h2 align="center">Job Detail</h2></div>
 <div class="col-sm-12 col-md-12">
 
<table class="table well">
<thead><tr><th colspan="2">Jod Detail</th></tr></thead>
<tbody>
<tr><td>Title</td><td><c:out value="${jobdetail.title}" /></td></tr>
<tr><td>Job Description</td><td><p ><c:out value="${jobdetail.description}" /></p></td></tr>
<tr><td>Experience Required</td><td><c:out value="${jobdetail.experienceMin}  To " /><c:out value="${jobdetail.experienceMax} Years" /></td></tr>
<tr><td>Required Qualification</td><td><c:out value="${jobdetail.qualification}" /></td></tr>
<tr><td>Functional Area</td><td><c:out value="${jobdetail.functionalArea}" /></td></tr>
</tbody>

</table>
</div>
 <div class="col-sm-12 col-md-12">
<h3>About Company </h3>
<table  class="table well">
<tr><td>Company Name</td><td><c:out value="${jobdetail.companyName}" /></td></tr>
<tr><td>Company Description</td><td><c:out value="${jobdetail.companyDescription}" /></td></tr>
<tr><td>Company Email</td><td><c:out value="${jobdetail.companyEmail}" /></td></tr>
<tr><td>Send Application for job</td>
<td><a class="btn btn-info"href='<spring:url value="/apply/${job.id}.html"/>'/> Apply job</a></td></tr>
</table>
</div>
</div>