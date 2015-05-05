<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include  file="../layout/taglib.jsp"%>
<style >

#login-frm{
margin-left:auto;
margin-right:auto;
width:600px;
border:1px solid f3aaff;
}

</style>



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
		<form:form commandName="user" cssClass="registrationForm">		
			<div class="col-md-8">
				<h3 class="dark-grey">Candidate Registration</h3>
				
				<div class="form-group col-lg-12">
					<label>Name</label><form:errors path="firstName" />
					<form:input path ="firstName"  cssClass="form-control" id="" value="" />
				</div>
				<div class="form-group col-lg-12">
					<label>Email Address</label><form:errors path="email" />
					<form:input path ="email"  cssClass="form-control" />
					
				</div>
					
				
				<div class="form-group col-lg-12">
					<label>Password</label> <form:errors path="password" />
					<form:input path ="password"  type="password"  cssClass="form-control"/>
					
				</div>
				
				<div class="form-group col-lg-12">
					<label>Repeat Password</label>
					<input type="password" name="password_again" class="form-control" id="" value="">
					
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
		</c:if>		</div>

				<div class="col-sm-12">
					<input type="checkbox" class="checkbox" />Terms and Conditions	</div>	
				
			<div class="col-sm-6">			
			<button type="submit" class="btn btn-primary btn-block">Register</button>
			</div>
			</div>
		</form:form>
			<div class="col-md-4">
				<h3 class="dark-grey">Terms and Conditions</h3>
				<p>
					By clicking on "Register" you agree to The Company's' Terms and Conditions
				</p>
				<p>
					While rare, prices are subject to change based on exchange rate fluctuations - 
					should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)
				</p>
				<p>
					Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)
				</p>
				<p>
					Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)
				</p>
				
				
			</div>
		</div>
	</section>
	
</div>
<script type="text/javascript">

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

</script>


