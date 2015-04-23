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
		<form:form commandName="user">		
			<div class="col-md-8">
				<h3 class="dark-grey">Candidate Registration</h3>
				
				<div class="form-group col-lg-12">
					<label>Name</label><form:errors path="firstName" />
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
	</form:form>
</div>



