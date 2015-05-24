<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
    <link href="../../dist/css/skins/skin-blue.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<%@ include file="../layout/taglib.jsp"%>
<script type="text/javascript"src="../../js/jquery-2.1.3.min.js"></script>
	
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>

<title><tiles:getAsString name="title" /></title>
 

     

</head>

<body class=" skin-blue sidebar-mini">
     <div class="wrapper">
     <tiles:insertAttribute name="headermenu" />
      <tiles:insertAttribute name="left_sidebar" />
      <tiles:insertAttribute name="body" />
      <tiles:insertAttribute name="footer" />
       <tiles:insertAttribute name="right_sidebar" />
			
</div><!-- ./wrapper -->
	
        <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../js/owl.carousel.min.js" type="text/javascript"></script>
  <script src="../../dist/js/app.min.js" type="text/javascript"></script>
</body>
</html>
