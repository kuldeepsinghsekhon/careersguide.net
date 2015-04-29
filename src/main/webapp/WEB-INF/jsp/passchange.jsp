<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ include  file="../layout/taglib.jsp"%>
       <div class="col-sm-9 col-md-9">
      <div class="panel panel-default">
  <div class="panel-heading">Change password</div>
  <div class="panel-body">
   <form:form commandName="changepass" class="form-horizontal"> 
  
				
				<div class="form-group col-lg-11">
					<label>Email Address</label><form:errors path="email" />
					<form:input path ="email"  class="form-control" id="" value=""/>
					
				</div>	
				<div class="form-group col-lg-11">
					<label>Password</label> <form:errors path="password" />
					<form:input path ="password"  type="password"  class="form-control" id="" value=""/>
					
				</div>
				<div class="form-group col-lg-11">
					<label>Repeat Password</label>
					<input type="password" name="" class="form-control" id="" value="">
				</div>	
				<div class="col-sm-4">			
			<button type="submit" class="btn btn-primary btn-block">Submit</button>
			</div>
				
</form:form>
  </div>
</div>

</div>