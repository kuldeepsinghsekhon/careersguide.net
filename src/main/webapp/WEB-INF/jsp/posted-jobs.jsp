<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>


 <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           Your Posted Jobs
          
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- Your Page Content Here -->
<div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">your jobs</h3><a class="btn btn-primary pull-right" href='<spring:url value="/jobform.html"/>'>New Post</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered table-hover table-striped">
	<tr>
		<th style="width: 20px">Job Id</th>
		<th style="width: 40px">Job Title</th>
		<th style="width: 40px">Response</th>
		<th style="width: 40px">Detail</th>
	</tr>
	<c:forEach items="${postedjobs}" var="job">

		<tr>
			<td><a href=''><c:out value="${job.id}" /></a></td>
			<td><c:out value="${job.title}" /></td>
			<td><a href='<spring:url value="/response/${job.id}.html"/>'>View
					Response</a></td>
			<td><a href='<spring:url value="/jobdetail/${job.id}.html"/>'>
					<button type="button" class="btn btn-primary btn-xs"
						title="View Detail">
						<span class="glyphicon glyphicon-pencil"></span>View
					</button>
			</a></td>
		</tr>



	</c:forEach>

   </table>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div><!-- /.box -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->


