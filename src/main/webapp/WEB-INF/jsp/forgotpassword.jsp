<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include  file="../layout/taglib.jsp"%>
    <style>
<!--

-->
</style>
<script type="text/javascript">
<!--
$(document).ready(function() {
	 $('#acceso').click(function(e) {
		    e.preventDefault();
		    $('div#form-olvidado').toggle('500');
		  });
	  $('#olvidado').click(function(e) {
	    e.preventDefault();
	    $('div#form-olvidado').toggle('500');
	  });
	 
	});
//-->
</script>
<div class="container">
	<div class="row">
	
        <div class="col-md-6 col-md-offset-3">
  <h4 style="border-bottom: 1px solid #c5c5c5;">
    <i class="glyphicon glyphicon-user">
    </i>
    Account Access
  </h4>
    <div  id="form-olvidado">
    <h4 class="">
      Forgot your password?
    </h4>
    <form:form commandName="forgotpass" accept-charset="UTF-8" role="form" id="login-recordar" >
      <fieldset>
        <span class="help-block">
          Email address you use to log in to your account
          <br>
          We'll send you an email with instructions to choose a new password.
        </span>
        <div class="form-group input-group">
          <span class="input-group-addon">
            @
          </span>
          <form:input path="email" class="form-control" placeholder="Email"  type="email" required=""/>
        </div>
        <button type="submit" class="btn btn-primary btn-block" id="btn-olvidado">
          Continue
        </button>
        <p class="help-block">
          <a class="text-muted" href="#" id="acceso"><small>Login Here</small></a>
        </p>
      </fieldset>
    </form:form>
  </div>
  
  
  <div style="display: none;padding: 20px;" id="form-olvidado">
  <form accept-charset="UTF-8" role="form" id="login-form" method="post">
      <fieldset>
        <div class="form-group input-group">
          <span class="input-group-addon">
            @
          </span>
          <input class="form-control" placeholder="Email" name="email" type="email" required="" autofocus="">
        </div>
        <div class="form-group input-group">
          <span class="input-group-addon">
            <i class="glyphicon glyphicon-lock">
            </i>
          </span>
          <input class="form-control" placeholder="Password" name="password" type="password" value="" required="">
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-block">
            Access
          </button>
          <p class="help-block">
            <a class="pull-right text-muted" href="#" id="olvidado"><small>Forgot your password?</small></a>
          </p>
        </div>
      </fieldset>
    </form>
  </div>

</div>
	</div>
</div>