<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include  file="../layout/taglib.jsp"%>
<script		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 
 <script type="text/javascript">
$(document).ready(function(){
	 $("#home").click(function(){
	        $("#myDiv").load("/login.html", function(responseTxt, statusTxt, xhr){
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



<button id="home">home</button>
<div id="myDiv"></div>
<button id="contactus">Change Content</button>