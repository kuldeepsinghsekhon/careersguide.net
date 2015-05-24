<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ include file="../layout/taglib.jsp"%>
      <!-- Main Header -->
      
      <!-- Left side column. contains the logo and sidebar -->
      
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           Admin Panel
           
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
<div class="row">
          <!-- Your Page Content Here -->
 <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-blue"><i class="fa fa-files-o"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Total Posted Jobs</span>
                  <span class="info-box-number"><c:out value="${totalJobs}"/></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-orange"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Total Followers</span>
                  <span class="info-box-number"></span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-red"><i class="fa fa-google-plus"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Likes</span>
                  <span class="info-box-number">41,410</span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>

            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Sales</span>
                  <span class="info-box-number">760</span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
     </div>
     <div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">Recently Posted jobs</h3><a class="btn btn-primary pull-right" href='<spring:url value="/jobform.html"/>'>New Post</a>
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
                    
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div><!-- /.box -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

    
               
      
     
    