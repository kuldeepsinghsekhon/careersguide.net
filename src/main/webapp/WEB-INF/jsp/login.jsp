<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<style>
<!--
.middlePage {
	width: 680px;
    height: 500px;
    position: absolute;
    top:0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
}
-->
</style>
<div class="middlePage">
<div class="page-header">
  <h1 class="logo">CareersGuide <small>Welcome to our place!</small></h1>
</div>

<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Please Sign In</h3>
  </div>
  <div class="panel-body">
  
  <div class="row">
  
<div class="col-md-5" >
<a href="#"><img src="#" /></a><br/>
<a href="#"><img src="#" /></a><br/>
<a href="#"><img src="#" /></a>
</div>

    <div class="col-md-7" style="border-left:1px solid #ccc;height:160px">
<form  action="/j_spring_security_check" method="post" class="form-horizontal" >
<fieldset>

  <input id="textinput" name="j_username" type="text" placeholder="Enter User Name" class="form-control input-md" >
 <br>
 <!--  <div class="spacing"><input type="checkbox" name="checkboxes" id="checkboxes-0" value="1"><small> Remember me</small></div>-->
  <input id="textinput" name="j_password" type="password" placeholder="Enter Password" class="form-control input-md" >
  <div class="spacing"><a href="#"><small> Forgot Password?</small></a><br/></div>
  <button id="singlebutton" name="singlebutton" class="btn btn-info btn-sm pull-right">Sign In</button>


</fieldset>
</form>
</div>
    
</div>
    
</div>
</div>

<p><a href="#">About</a> ·Kuldeep</p>

</div>
