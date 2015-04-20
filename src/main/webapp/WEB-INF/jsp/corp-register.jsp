<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>







<div class="container-fluid">
    <section class="container">
		<div class="container-page">	
		<form:form commandName="usercorp" 	>		
			<div class="col-md-8">
				<h3 class="dark-grey">Employer Registration</h3>
				
				<div class="form-group col-lg-12">
					<label>Company Name</label>
					<form:input path ="firstName"  class="form-control" id="" value="" />
				</div>
				
				<div class="form-group col-lg-6">
					<label>Password</label>
					<form:input path ="password"  type="password"  class="form-control" id="" value=""/>
				</div>
				
				<div class="form-group col-lg-6">
					<label>Repeat Password</label>
					<input type="password" name="" class="form-control" id="" value="">
				</div>
								
				<div class="form-group col-lg-6">
					<label>Email Address</label>
					<form:input path ="email"  class="form-control" id="" value=""/>
				</div>
				
				<div class="form-group col-lg-6">
					<label>Repeat Email Address</label>
					<input type="" name="" class="form-control" id="" value="">
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

