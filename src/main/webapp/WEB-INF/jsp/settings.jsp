<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include  file="../layout/taglib.jsp"%>
  <style>
<!--
body{margin-top:0px;}
.glyphicon { margin-right:0px; }
#panel-body { padding:0px; }
#panel-body table tr td { padding-left: 15px }

#panel-body .table {margin-bottom: 0px; }
-->
</style>  
<script		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	 $("#changePass").click(function(){
	        $("#bodyDiv").load("/pass.html", function(responseTxt, statusTxt, xhr){
	            if(statusTxt == "success")
	                alert("External content loaded successfully!");
	            if(statusTxt == "error")
	                alert("Error: " + xhr.status + ": " + xhr.statusText);
	        });
	    }  );
    $("#contactus").click(function(){
       
        $("#myDiv").load("/contactus.html", function(responseTxt, statusTxt, xhr){
            if(statusTxt == "success")
                alert("External content loaded successfully!");
            if(statusTxt == "error")
                alert("Error: " + xhr.status + ": " + xhr.statusText);
        });
    });
});

</script>
<script type="text/javascript">
function savePass(){
    var pass = $("#pass").val();
    var valid = pass == $("#passConfirm").val();
    if(!valid) {
      $("#message").show();
      return;
    }
    $.post("<c:url value="/pass.html"></c:url>",{password: pass}, function(data){
            window.location.href = "<c:url value="/settings.html"></c:url>";
    })
    .fail(function(data) {
        window.location.href = 
          "<c:url value="/login.html"></c:url>" + "?message=" + data.responseJSON.message;
    });
}
</script>

<div class="container">

    <div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
               
             
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" ><span class="glyphicon glyphicon-user">
                            </span>Account</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse">
                        <div class="panel-body" id="panel-boby">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a id="changePass" href="#">Change Password</a>
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-trash text-danger"></span><a href="#" class="text-danger">
                                            Delete Account</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
             
            </div>
        </div>
        <div class="col-sm-9 col-md-9" id="bodyDiv">
        
        
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
</div>
</div>