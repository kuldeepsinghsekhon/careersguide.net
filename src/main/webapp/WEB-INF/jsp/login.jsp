<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
 <div id="login-overlay" class="modal-dialog">
<div class="page-header"><h2>Login To CareersGuide.net</h2></div>
          
        
 <div class="row">
                  <div class="col-xs-7">
                      <div class="well">
                      <form  action="/j_spring_security_check" method="post" class="form-horizontal loginForm" id="loginForm" >
                         
                              <div class="form-group">
                                  <label for="j_username" class="control-label">Username</label>
                                 <input id="textinput" name="j_username" type="text"  placeholder="example@gmail.com" class="form-control" id="username">
                                 
                                  <span class="help-block"></span>
                              </div>
                              <div class="form-group">
                                  <label for="j_password" class="control-label">Password</label>
                                   <input id="textinput" name="j_password" type="password"   placeholder="password" class="form-control" id="password" >
                                 
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
                              <a href="/forgotpass.html" class="btn btn-info btn-block">Forgot Password</a>
                          </form>
                      </div>
                  </div>
                   <div class="col-xs-5">
                      <p class="lead">Register now for <span class="text-success">FREE</span></p>
                      <ul class="list-unstyled" style="line-height: 2">
                          <li><span class="fa fa-check text-success"></span> Find Best Job</li>
                          <li><span class="fa fa-check text-success"></span> Fast Respose</li>
                          <li><span class="fa fa-check text-success"></span> Save your Resume</li>
                          <li><span class="fa fa-check text-success"></span> Fast Processing</li>
                         
                          <li><a href="/read-more/"><u>Read more</u></a></li>
                      </ul>
                      <p><a href="/register.html" class="btn btn-info btn-block"> register now!</a></p>
                  </div>
                  </div>
                 
 
</div>

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













