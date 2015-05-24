<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Page Header
            <small>Optional description</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- Your Page Content Here -->
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

					<label for="experienceMin" class="col-sm-4 control-label">Annual Salary</label>

					<div class=" col-sm-4   ">
						<form:select path="salaryMin" class="form-control">
							<form:option value="0" label="Min-salary" />

							<form:option value="100000">1 Lack</form:option>
							<form:option value="200000">2 Lack</form:option>
							<form:option value="300000">3 Lack</form:option>
							<form:option value="400000">4 Lack</form:option>
						</form:select>

					</div>

					<div class="col-sm-4  ">
						<form:select path="salaryMax" class="form-control">
							<form:option value="0" label="Max-Salary" />

							<form:option value="100000">1 Lack</form:option>
							<form:option value="200000">2 Lack</form:option>
							<form:option value="300000">3 Lack</form:option>
							<form:option value="400000">4 Lack</form:option>
						</form:select>

					</div>

				</div>



<div class="form-group">
					<label for="State" class="col-sm-4 control-label">State of Job</label>
					<div class="col-sm-8">
						<form:select path="state" class="form-control">
							<form:option value="0" label="Select State" />

							<form:option value="punjab">punjab</form:option>
							<form:option value="himachal">himachan</form:option>
							
						</form:select>
					</div>
				</div>
				<div class="form-group">
					<label for="City" class="col-sm-4 control-label">City of Job</label>
					<div class="col-sm-8">
						<form:select path="city" class="form-control">
							<form:option value="0" label="Select City" />

							<form:option value="amritsar">Amritsar</form:option>
							<form:option value="jalandar">jalandar</form:option>
							
						</form:select>
					</div>
				</div>
				<h3 class="well well-sm ">Company  Details</h3>
				
				
				
				
				<div class="form-group">
					<label for="companyName" class="col-sm-4 control-label">Company Name :</label>
					<div class="col-sm-8">
						<form:input path="companyName" class="form-control col-sm-2" />
					</div>
				</div>
				
				<div class="form-group">
					<label for="companyDescription" class="col-sm-4 control-label">Company Description :</label>
					<div class="col-sm-8">
						<form:textarea path="companyDescription" class="form-control col-sm-2" />
					</div>
				</div>
				
				<div class="form-group">
					<label for="companyTelephone" class="col-sm-4 control-label">Company Telephone :</label>
					<div class="col-sm-8">
						<form:input path="companyTelephone" class="form-control col-sm-2" />
					</div>
				</div>
				
				<div class="form-group">
					<label for="companyEmail" class="col-sm-4 control-label">Company Email :</label>
					<div class="col-sm-8">
						<form:input path="companyEmail" class="form-control col-sm-2" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-info">Submit</button>
					</div>
				</div>
			</form:form>
		</div>

	</div>
	<!-- row ends -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
	
