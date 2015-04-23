<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%@ include  file="../layout/taglib.jsp"%>




<div class="container-fluid">
    <section class="container">
		<div class="container-page">
		<c:if test="${param.success eq true}">
		<div class="alert alert-success ">
		Registration Success full 
		<h6>Activate your Account</h6>
		<p>Please check your  mail and click on Verification Link To Activate your Account</p>
		</div>
		
		</c:if>	
		<form:form commandName="usercorp" >		
			<div class="col-md-8">
				<h3 class="dark-grey">Employer Registration</h3>
				
				<div class="form-group col-lg-12">
					<label>Company Name</label><form:errors path="firstName" />
					<form:input path ="firstName"  class="form-control" id="" value="" />
				</div>
				<div class="form-group col-lg-6">
					<label>Email Address</label><form:errors path="email" />
					<form:input path ="email"  class="form-control" id="" value=""/>
					
				</div>
				
				<div class="form-group col-lg-6">
					<label>Repeat Email Address</label>
					<input type="text" name="" class="form-control" id="" value="">
				</div>		
				
				<div class="form-group col-lg-6">
					<label>Password</label> <form:errors path="password" />
					<form:input path ="password"  type="password"  class="form-control" id="" value=""/>
					
				</div>
				
				<div class="form-group col-lg-6">
					<label>Repeat Password</label>
					<input type="password" name="" class="form-control" id="" value="">
					
				</div>
				
				<div class="col-sm-6">
					<input type="checkbox" class="checkbox" />Sigh up for our newsletter
				</div>

				<div class="col-sm-6">
					<input type="checkbox" class="checkbox" />Send notifications to this email
				</div>	
				<div class="col-sm-6">			
			<a href=""class="">Need Help Register</a>
			</div>
			<div class="col-sm-6">			
			<button type="submit" class="btn btn-primary btn-block">Register</button>
			</div>
			</div>
		</form:form>
			<div class="col-md-4">
				<h3 class="dark-grey">Employer Login</h3>
                      <div class="well">
                      <form  action="/j_spring_security_check" method="post" class="form-horizontal" id="loginForm" >
                         
                              <div class="form-group">
                                  <label for="username" class="control-label">Username</label>
                                 <input id="textinput" name="j_username" type="text" value="" required="" title="Please enter you username" placeholder="example@gmail.com" class="form-control" id="username">
                                 
                                  <span class="help-block"></span>
                              </div>
                              <div class="form-group">
                                  <label for="password" class="control-label">Password</label>
                                   <input id="textinput" name="j_password" type="password" value="" required="" title="Please enter your password" placeholder="example@gmail.com" placeholder="Enter Password" class="form-control" id="password" >
                                 
                                  <span class="help-block"></span>
                              </div>
                              <div id="loginErrorMsg" class="alert alert-error hide">Wrong username og password</div>
                              <div class="checkbox">
                                  <label>
                                      <input type="checkbox" name="remember" id="remember"> Remember login
                                  </label>
                                  <p class="help-block">(if this is a private computer)</p>
                              </div>
                              <button type="submit" class="btn btn-danger btn-block">Login</button>
                              <a href="/forgot/" class="btn btn-info btn-block">Forgot Password</a>
                          </form>
                      </div>
                  </div>
				
				
			
		</div>
	</section>
	
</div>

