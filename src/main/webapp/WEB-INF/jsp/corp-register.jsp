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
		
			
			<div class="col-md-8" style="margin-bottom: 50px;">
			<form:form commandName="usercorp" cssClass="registrationForm">	
				<h3 class="dark-grey">Employer Registration</h3>
				
				<div class="form-group col-lg-12">
					<label>Company Name</label><form:errors path="firstName" />
					<form:input path ="firstName"  class="form-control" id="" value="" />
				</div>
				<div class="form-group col-lg-12">
					<label>Email Address</label><form:errors path="email" />
					<form:input path ="email"  class="form-control" id="" value=""/>
					
				</div>
				
					
				
				<div class="form-group col-lg-12">
					<label>Password</label> <form:errors path="password" />
					<form:input path ="password"  type="password"  class="form-control" />
					
				</div>
				
				<div class="form-group col-lg-12">
					<label>Repeat Password</label>
					<input type="password" name="password_again" class="form-control" >
					
				</div>
				
				<div class="col-sm-12">
				<p>Help us prevent spam!</p>
				<p>Please type the text from the image below - press the refresh refresh button for a new challenge </p>
					<div id="captcha_paragraph">
			<c:if test="${invalidRecaptcha == true}">
				<span class="error_form_validation"><spring:message code="invalid.captcha" text="Invalid captcha please try again"/></span>
			</c:if>
		    <%
		        ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LeqPwYTAAAAAIjScJIK4NmXoUY-1PekPoWoYJHl", 
		        					"6LeqPwYTAAAAAL0PblaOtcEI1pcBAKXNOTsPJkC8", false);
		        out.print(c.createRecaptchaHtml(null, null));
		    %>	 	   
		</div> 	
		<c:if test="${param.success eq false}">
		<div class="alert alert-danger ">
		Wrong   ReCaptcha Try Again
		</div>
		
		</c:if>
		
				</div>

				<div class="col-sm-6">
					
				</div>	
				
			<div class="col-sm-6">			
			<button type="submit" class="btn btn-primary btn-block">Register</button>
			</div>
			</form:form>
			</div>
		
			<div class="col-md-4">
				<h3 class="dark-grey">Employer Login</h3>
                      <div class="well">
                      <form  action="/j_spring_security_check" method="post" class="form-horizontal loginForm" id="loginForm" >
                         
                              <div class="form-group ">
                                  <label for="username" class="control-label">Username</label>
                                 <input id="textinput" name="j_username" type="text" value="" required="" title="Please enter valid email" placeholder="example@gmail.com" class="form-control" id="username">
                                 
                                  <span class="help-block"></span>
                              </div>
                              <div class="form-group">
                                  <label for="password" class="control-label">Password</label>
                                   <input id="textinput" name="j_password" type="password" value="" required="" title="" placeholder="Enter Password" class="form-control" id="password" >
                                 
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
                              <a href="forgotpass.html" class="btn btn-info btn-block">Forgot Password</a>
                          </form>
                      </div>
                  </div>
				
				
			
		</div>
	</section>
	
</div>

<script type="text/javascript">
<!-- 
$(document).ready(function(){
	$(".registrationForm").validate(
			{
				rules:{
					firstName:{
						required:true,
						minlength:3
						},
						email:{
							required:true,
							email:true
							},
							password:{
								required:true,
								minlength:5
								},
								password_again:{
									required:true,
									minlength:5,
									equalTo:"#password"
									}
					},
					highlight:function(element){
						$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
						},
						unhighlight:function(element){
							$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
							}
			}

		);	
});
-->
</script>
<script type="text/javascript">
<!-- 
$(document).ready(function(){
	$(".loginForm").validate(
			{
				rules:{
					
					j_username:{
							required:true,
							email:true
							},
							j_password:{
								required:true,
								minlength:5
								}
								
					},
					highlight:function(element){
						$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
						},
						unhighlight:function(element){
							$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
							}
			}

		);	
});
-->
</script>
