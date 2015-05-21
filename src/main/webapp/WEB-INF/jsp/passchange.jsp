<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ include  file="../layout/taglib.jsp"%>
      <script type="text/javascript">

//$(document).ready(function(){
	
    $("#submit").click(function(e){
       e.preventDefault();
       var password=$(".password_form#password").val();
		var password=$(".password_form#newpassword").val();
       $.ajax({
			type:"POST",
			url:"http://localhost:8080/changepass",
			data:{
				

				}
      
           });
           
        
    });
});

</script>
      
  
  
       <div class="col-sm-9 col-md-9">
    <%--    
      <div class="panel panel-default">
  <div class="panel-heading">Change password</div>
  <div class="panel-body">
   <form:form commandName="changepass" class="form-horizontal password_form"> 
  
				
				
				<div class="form-group col-lg-11">
					<label>Old Password</label> <form:errors path="password" />
					<form:input path ="password"  type="password"  class="form-control" id="password" value=""/>
					
				</div>
				<div class="form-group col-lg-11">
					<label>New Password</label>
					<form:input path="newpassword" type="password"  class="form-control" id="" value=""/>
				</div>	
				<div class="col-sm-4">			
			<button type="submit" class="btn btn-primary btn-block submit">Submit</button>
			</div>
				
</form:form>
  </div>
</div> --%>
<div class="alert alert-danger " hidden="true" id="message">
		<h4>Password does not match</h4>
		
		</div>
		<c:if test="${param.success eq true}">
		<div class="alert alert-success ">
		Registration Success full 
		<h6>Activate your Account</h6>
		<p>Please check your  mail and click on Verification Link To Activate your Account</p>
		</div>
		
		</c:if>	
		
		<div class="panel panel-default">
  <div class="panel-heading">Change password</div>
  <div class="panel-body">
  
				<div class="form-group col-lg-11">
					<label> Password</label> 
					<input   type="password"  class="form-control" id="pass" value=""/>
					
				</div>
				<div class="form-group col-lg-11">
					<label>Re Password</label>
					<input  type="password"  class="form-control" id="passConfirm" value=""/>
				</div>	
				<div class="col-sm-4">			
			<button type="submit"  onclick="savePass()" class="btn btn-primary btn-block submit" >Submit</button>
			</div>
        </div>
    </div>
</div>
