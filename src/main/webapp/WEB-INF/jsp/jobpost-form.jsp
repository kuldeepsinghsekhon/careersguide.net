<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-8 ">
		<h3 class="well well-sm">Job Details</h3>
			<form:form commandName="jobs" class="form-horizontal">
				<div class="form-group">
					<label for="title" class="col-sm-4 control-label">Title of Job :</label>
					<div class="col-sm-8">
						<form:input path="title" class="form-control col-sm-2" />
					</div>
				</div>

					<div class="form-group">
					<label for="description" class="col-sm-4 control-label">Description</label>
					<div class="col-sm-8">
						<form:textarea path="description" class="form-control" />
					</div>
				</div>
					<div class="form-group">
					<label for="employerIndustry" class="col-sm-4 control-label"> Industry of Employer</label>
					<div class="col-sm-8">
						<form:select path="employerIndustry" class="form-control">
							<form:option value="0" label="Select Industry " />

							<form:option value="IT">IT</form:option>
							<form:option value="Banking">Banking</form:option>
							<form:option value="bpo">BPO</form:option>
							<form:option value="matrimony">Matrimony</form:option>
						</form:select>
					</div>
				</div>
				<div class="form-group">
					<label for="functionalArea" class="col-sm-4 control-label"> functional Area</label>
					<div class="col-sm-8">
						<form:select path="functionalArea" class="form-control">
							<form:option value="0" label="Select Functional Area " />

							<form:option value="IT">IT</form:option>
							<form:option value="Banking">Banking</form:option>
							<form:option value="bpo">BPO</form:option>
							<form:option value="matrimony">Matrimony</form:option>
						</form:select>
					</div>
				</div>


				<div class="form-group">
					<label for="qualification" class="col-sm-4 control-label">Qualification</label>
					<div class="col-sm-8">
						<form:input path="qualification" class="form-control" />
					</div>
				</div>



				<div class="form-group">

					<label for="experienceMin" class="col-sm-4 control-label">Experience</label>

					<div class=" col-sm-4   ">
						<form:select path="experienceMin" class="form-control">
							<form:option value="0" label="Min-Ex" />

							<form:option value="1">1</form:option>
							<form:option value="2">2</form:option>
							<form:option value="3">3</form:option>
							<form:option value="4">4</form:option>
						</form:select>

					</div>

					<div class="col-sm-4  ">
						<form:select path="experienceMax" class="form-control">
							<form:option value="0" label="Max-Ex" />

							<form:option value="1">1</form:option>
							<form:option value="2">2</form:option>
							<form:option value="3">3</form:option>
							<form:option value="4">4</form:option>
						</form:select>

					</div>

				</div>






				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>


			</form:form>
		</div>
	</div>
	<!-- row ends -->
</div>
<!-- container end -->