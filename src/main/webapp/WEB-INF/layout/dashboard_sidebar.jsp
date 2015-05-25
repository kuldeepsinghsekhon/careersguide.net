<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/taglib.jsp"%>
<aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

          <!-- Sidebar user panel (optional) -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p><security:authentication property="principal.username"/></p>
              <!-- Status -->
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- search form (Optional) -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->

          <!-- Sidebar Menu -->
          <ul class="sidebar-menu">
            <li class="header">HEADER</li>
            <!-- Optionally, you can add icons to the links -->
           <security:authorize access="hasRole('ROLE_CORP')">
						<li class="${current=='jobform'?'active':'' }"><a href="/jobform.html" ><i class="fa fa-circle-o"></i><span>Post Job</span></a></li>
							<li class="${current=='users'?'active':'' }"><a	href='<spring:url value="/posted-jobs.html" />'><i class="fa fa-circle-o"></i><span>Your Jobs</span></a></li>
							<li class="${current=='tests'?'active':'' }"><a href='<spring:url value="/tests.html" />'><i class="fa fa-circle-o"></i><span>Exams</span></a></li>
					<li class="${current=='users'?'active':'' }"><a	href='<spring:url value="/posted-jobs.html" />'><i class="fa fa-circle-o"></i><span>Prepair Exams Result</span></a></li>
					</security:authorize>
					
          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->