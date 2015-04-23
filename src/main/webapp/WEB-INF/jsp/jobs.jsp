<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include  file="../layout/taglib.jsp"%>
  <div class="container">
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
               <form:form commandName="search">
                   <form:input path="title" placeholder=" Job Title" class="form-controle"/>
                    <form:input path="qualification" placeholder="Qualification" class="form-controle"/>
                    <button  type="submit" class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search "></span></button>
               </form:form>
            </div>
        </div>
	</div>
</div>

<c:forEach items="${jobs}" var="job">
								<div class="list-group-item well ">
									<h4 class="list-group-item-heading">
										<c:out value="${job.title}" />
									</h4>
									<p class="list-group-item-text">
										<c:out value="${job.description}" />
									</p>
									<p><a class="" href='<spring:url value="/jobdetail/${job.id}.html"/>'> read more</a>
									<a class=""href='<spring:url value="/apply/${job.id}.html"/>'/> Apply Now</a></p>
								</div>
							</c:forEach>