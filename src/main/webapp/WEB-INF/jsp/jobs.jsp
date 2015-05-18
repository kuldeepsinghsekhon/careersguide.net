<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>
<style>
<!--

.widget .panel-body { padding:0px; }
.widget .list-group { margin-bottom: 0; }
.widget .panel-title { display:inline }
.widget .label-info { float: right; }
.widget li.list-group-item {border-radius: 0;border: 0;border-top: 1px solid #ddd;}
.widget li.list-group-item:hover { background-color: rgba(86,61,124,.1); }
.widget .mic-info { color: #666666;font-size: 11px; }
.widget .action { margin-top:5px; }
.widget .comment-text { font-size: 12px; }
.widget .btn-block { border-top-left-radius:0px;border-top-right-radius:0px; }
-->
</style>
<div class="container">
	<div class="row">
	<div class="jumbotron">
	 <div class="search-form wow pulse" data-wow-delay="0.8s">
	 <form:form commandName="search" class=" form-inline">
                            
                                <div class="form-group">
                                    <form:input path="title" placeholder=" Job Title" type="text" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <select  name="" class="form-control">
                                        <option>Select Your City</option>
                                        <option selected>New york, CA</option>
                                        <option>New york, CA</option>
                                        <option>New york, CA</option>
                                        <option>New york, CA</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <form:select path="qualification" placeholder="Qualification" class="form-control">
                                        <option selected>Qualification</option>
                                        <option >bbc</option>
                                        <option>mba</option>
                                        <option>App Design</option>
                                    </form:select>
                                </div>
                                <input type="submit" class="btn" value="Search">


                           </form:form>
                        </div>
                        </div>
                        </div>
	</div>
	
<div class="container">
	<div class="row">
		<div class="panel panel-default widget">
			<div class="panel-heading">
				<span class="glyphicon glyphicon-comment"></span>
				<h3 class="panel-title">Recent Jobs</h3>
				<span class="label label-info"> 78</span>
			</div>
			<div class="panel-body">
				
					<ul class="list-group">
					<c:forEach items="${jobs}" var="job">
						<li class="list-group-item">
							<div class="row">
								<div class="col-xs-2 col-md-1">
									<img src="http://placehold.it/80"
										class="img-circle img-responsive" alt="" />
								</div>
								<div class="col-xs-10 col-md-11">
									<div>
										<a
											href="http://www.jquery2dotnet.com/2013/10/google-style-login-page-desing-usign.html">
											<c:out value="${job.title}" />
										</a>
										<div class="mic-info">
											By: <a href="#">Bhaumik Patel</a> on 2 Aug 2013
										</div>
									</div>
									<div class="comment-text">
										<c:out value="${job.description}" />
									</div>
									<div class="action">
										<a href='<spring:url value="/jobdetail/${job.id}.html"/>'>
											<button type="button" class="btn btn-primary btn-xs"
												title="View Detail">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</a> <a href='<spring:url value="/apply/${job.id}.html"/>'>
											<button type="button" class="btn btn-success btn-xs"
												title="Approved">
												<span class="glyphicon glyphicon-ok"></span>
											</button>
										</a>

									</div>
								</div>
							</div>
						</li>
				</c:forEach>

				</ul>
				<a href="#" class="btn btn-primary btn-sm btn-block" role="button"><span
					class="glyphicon glyphicon-refresh"></span> More</a>
			</div>
		</div>
	</div>
</div>
