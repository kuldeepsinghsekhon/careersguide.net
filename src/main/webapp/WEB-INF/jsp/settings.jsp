<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include  file="../layout/taglib.jsp"%>
  <style>
<!--
body{margin-top:50px;}
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
	    });
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
                                        <span class="glyphicon glyphicon-trash text-danger"></span><a href="http://www.jquery2dotnet.com" class="text-danger">
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
          
        </div>
    </div>
</div>
