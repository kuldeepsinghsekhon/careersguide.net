<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
 <div id="login-overlay" class="modal-dialog">

          <div class="modal-header">
              
              <h4 class="modal-title" id="myModalLabel">Login to CareersGuide.net</h4>
          </div>
        
 <div class="row">
                  <div class="col-xs-7">
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















