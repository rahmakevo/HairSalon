<%@ page 
    language="java" 
    contentType="text/html; charset=UTF-8"
    import="com.rahmak.HairSalon.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">

<!-- CSS -->
<link rel="stylesheet" href="resources/css/master.css">
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">Hair Salon</a>
</div>

<!-- collect the nav links -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav">
<li class="active"><a href="#">Latest Styles <span class="sr-only">(current)</span></a></li>
<li><a href="#">Hair Style Blogs</a></li>
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Our Salons: <span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="#">Sarit Centre Westalnads Nairobi</a></li>
<li><a href="#">Hilton Hotel Nairobi CBD</a></li>
<li><a href="#">NextGen Mall Along Mombasa Rd</a></li>
<li><a href="#">GardenCity Mall Along Thika Rd</a>
</ul>
</li>
</ul>
</div>
</div>
</nav>

<div class="row">
<h3 class="text-center">Maintenance Parlor</h3>
<a href="#" class="thumbnail">
<h3 class="text-center">Maintenance Parlor</h3>
<img src="resources/images/download.jpg" alt="">
</a>
</div>

<div class="row">
<h3 class="text-center">Our Services</h3>
<div class="col-xs-6 col-md-4">
<div class="thumbnail">
<img alt="service1" src="resources/images/download1.jpg">
<div class="caption">
<h3> Service 1</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
<p><a href="#" class="btn btn-primary" role="button">Learn More</a></p>
</div>
</div>
</div>

<div class="col-xs-6 col-md-4">
<div class="thumbnail">
<img alt="service1" src="resources/images/download2.jpg">
<div class="caption">
<h3> Service 2</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
<p><a href="#" class="btn btn-primary" role="button">Learn More</a></p>
</div>
</div>
</div>

<div class="col-xs-6 col-md-4">
<div class="thumbnail">
<img alt="service1" src="resources/images/download2.jpg">
<div class="caption">
<h3> Service 3</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
<p><a href="#" class="btn btn-primary" role="button">Learn More</a></p>
</div>
</div>
</div>

<div class="col-xs-6 col-md-4">
<div class="thumbnail">
<img alt="service1" src="resources/images/download3.jpg">
<div class="caption">
<h3> Service 4</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
<p><a href="#" class="btn btn-primary" role="button">Learn More</a></p>
</div>
</div>
</div>

<div class="col-xs-6 col-md-4">
<div class="thumbnail">
<img alt="service1" src="resources/images/download2.jpg">
<div class="caption">
<h3> Service 3</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
<p><a href="#" class="btn btn-primary" role="button">Learn More</a></p>
</div>
</div>
</div>

<div class="col-xs-6 col-md-4">
<div class="thumbnail">
<img alt="service1" src="resources/images/download3.jpg">
<div class="caption">
<h3> Service 4</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
<p><a href="#" class="btn btn-primary" role="button">Learn More</a></p>
</div>
</div>
</div>
</div>

<div class="row">
<a href="#" class="thumbnail">
<h3 class="text-center">Our Team</h3>
<img src="resources/images/download4.jpg" alt="">
</a>
</div>

<%
DbManager db = new DbManager();
String name = request.getParameter("name");
String email = request.getParameter("email");

String action = request.getParameter("action");
String create = "create";

Client client = new Client();
if(create.equals(action)) {
	client = new Client(name, email);
	db.create(client);
}
%>


<div class="container">
<form action="index.jsp">
<h3>Ask for A Hair Stylist: </h3>
<div class="form-group">
<label for="name">Name: </label>
<input name="name" class="form-control" placeholder="Enter Your Name" type="text">
</div>

<div class="form-group">
<label for="email">Email Address: </label>
<input name="email" class="form-control" placeholder="Enter Your Email" type="email">
</div>

<div class="checkbox">
<label>
<input type="checkbox"> Check me for our newsletters
</label>
</div>

<div class="checkbox">
<label>
<input type="checkbox"> I Agree to the terms and conditions
</label>
</div>
<div>
<a href="Client.jsp"><input type="submit" name="action" value="create" class="btn btn-default"> Proceed</a>
</div>
</form>
</div>

<%
DbManager dbconn = new DbManager();
String username = request.getParameter("username");
String userpassword = request.getParameter("userpassword");

String actions = request.getParameter("actionStylist");
String createStylist = "createStylist";

Stylist stylist = new Stylist();
if(createStylist.equals(actions)) {
	stylist = new Stylist(username, userpassword);
	dbconn.createStylist(stylist);
}
%>

<div class="container">
<form action="index.jsp">
<h3>Register as A Stylist: </h3>
<div class="form-group">
<label for="username">Enter Stylist Name: </label>
<input  name="username" type="text" class="form-control" placeholder="Enter Stylist Name">
</div>

<div class="form-group">
<label for="password">Enter Stylist Password: </label>
<input  name="userpassword" type="password" class="form-control" placeholder="Enter Stylist Password">
</div>

<div class="checkbox">
<label>
<input type="checkbox"> I Agree to the terms and conditions
</label>
</div>

<a href="Stylist.jsp"><input type="submit" name="actionStylist" value="createStylist" class="btn btn-default"> Proceed</a>
</form>




<!-- jQuery (necessary for bootstrap's JavaScript plugins) -->
<script src="resources/js/jquery.min.js" charset="utf-8"></script>

<!-- Include all compiled plugins(below), include individual files as well -->

<!-- Boostrap -->
<script src="resources/js/bootstrap.min.js" charset="utf-8"></script>

<!-- Fonts -->
<script src="resources/fonts/glyphicons-halflings-regular.eot" charset="utf-8"></script>
<script src="resources/fonts/glyphicons-halflings-regular.svg" charset="utf-8"></script>
<script src="resources/fonts/glyphicons-halflings-regular.ttf" charset="utf-8"></script>
<script src="resources/fonts/glyphicons-halflings-regular.woff" charset="utf-8"></script>
<script src="resources/fonts/glyphicons-halflings-regular.woff2" charset="utf-8"></script>
</body>
</html>