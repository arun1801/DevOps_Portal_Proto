<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DevOps Portal - Artificial Intelligence to setup your Infrastructure </title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/ct-navbar.css">
<link rel="stylesheet" href="assets/bootstrap/css/pe-icon-7-stroke.css">
<link rel="stylesheet"
	href="assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/form-elements.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/mdb.css">
<link rel="stylesheet" href="assets/css/wizard_effect.css">
<link rel="stylesheet" href="assets/css/normalize.css">
<link  href="http://fonts.googleapis.com/css?family=Cabin:400,500,600,bold" rel="stylesheet" type="text/css" >

<link  href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:regular,bold" rel="stylesheet" type="text/css" >
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/bootstrap/js/ct-navbar.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>
<script src="assets/js/modernizr.custom.79639.js"></script>
<script src="assets/js/modernizr.custom.97074.js"></script>
<script src="assets/js/jquery.hoverdir.js"></script>
<script src="assets/js/classie.js"></script>
<script src="assets/js/genie_effect.js"></script>
<script src="assets/js/modernizr.custom.js"></script>
<script src="assets/js/snap.svg-min.js"></script>
<script src="assets/js/modernizr.custom_form.js"></script>
<script src="assets/js/selectFx.js"></script>
<script src="assets/js/fullscreenForm.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/pathLoader.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="assets/js/bootstrap-select.min.js"></script>


 

<!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
			<div id="navbar-full">
    <div id="navbar">
       <!--    
        navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange  
        -->
        <nav class="navbar navbar-ct-blue navbar-fixed-top" role="navigation">
          
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<%try
{ if(request.getSession(false).getAttribute("first_name")==null) 
{
}else{%>


              <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="javascript:void(0);" data-toggle="search" class="hidden-xs">
                            <i class="pe-7s-search"></i>
                            <p>Search</p>
                        </a>
                    </li>
                     <li>
                        <a href="user_home.jsp">
                            <i class="pe-7s-home">
                            </i>
                            <p>Home</p>
                        </a>
                    </li> 
                    <li>
                        <a href="#">
                            <i class="pe-7s-mail">
                                <span class="label">23</span>
                            </i>
                            <p>Messages</p>
                        </a>
                    </li> 
                    <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="pe-7s-user"></i>
                                <p><%=request.getSession(false).getAttribute("first_name")%></p>
                            </a>
                          <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something</a></li>
                            <li class="divider"></li>
                            <li><a href="#log_out" id="log_out" data-category="logout">Log Out</a></li>
                          </ul>
                    </li>
               </ul>
               <form class="navbar-form navbar-right navbar-search-form" role="search">                  
                 <div class="form-group">
                      <input type="text" value="" class="form-control" placeholder="Search...">
                 </div> 
              </form>
<%}} catch(Exception e)
{ response.sendRedirect("index.jsp");
}%>              
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav></div></div>
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<strong><a href="index.jsp" style="color: white;">DevOps Portal</a></strong> &nbsp;Setup Infrastructure with clicks 
						</h1>
						<div class="description">
							<p>
								
							</p>
						</div>
					</div>
				</div>