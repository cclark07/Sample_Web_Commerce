<!DOCTYPE html>
<html lang="en">
<head>
<title>SignUp Confirmation</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Swis721_Cn_BT_400.font.js"></script>
<script type="text/javascript" src="js/Swis721_Cn_BT_700.font.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/jcarousellite.js"></script>
<script type="text/javascript" src="js/script.js"></script>

  <!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
	<style type="text/css">
		.bg{ behavior: url(js/PIE.htc); }
	</style>
  <![endif]-->
	<!--[if lt IE 7]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
		</div>
	<![endif]-->

</head>

<body id="page1">
	<div class="body1">
	<div class="body2">
	<div class="body5">
		<div class="main">
<!-- header -->
			<header>
				<div class="wrapper">
				<h1><a href="index.html"><img src="images/traders.png"></a></h1>
				<nav>
					<ul id="menu">
						<li id="nav1"><a href="index.html">Home<span>Welcome!</span></a></li>
						<li id="nav4"><a href="Products.html">Products<span>The best</span></a></li>
						<li id="nav2" class="active"><a href="Registration.html">SignUp/Logon<span>join us</span></a></li>
						<li id="nav5"><a href="Contacts.html">Contact Us<span>find us</span></a></li>
						<li id="nav3"><a href="managecart.html">Cart<span>Checkout</span></a></li>
					</ul>
				</nav>
				</div>
			
<!-- header end-->
		</div>
	</div>
	</div>
	</div>
	<div class="body3">
		<div class="main">
<!-- content -->
			<article id="content">
			  <div class="wrapper">
											

						<FORM METHOD="POST">
						<div align="center">
<% 
Set cn = Server.CreateObject("ADODB.Connection") 
openStr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("admin/~db/~inv.mdb")
 cn.Open openStr 
SQL = "SELECT * FROM tblCust" 
Set record = Server.CreateObject("ADODB.Recordset") 
record.Open sql, cn, 2, 2 

	 Response.Write"<h3>Thank you for signing up with us " & Request.Form("first") & " " & Request.Form("last") & "! Below is the Secret Question/Answer you selected:" & "<hr></h3>"
	 
	  Response.Write"<b>Secret Question</b>: " & Request.Form("squestion") & "<br>" 
	Response.Write"<b>Secret Answer</b>: " & Request.Form("sanswer") & "<br>" 

record.AddNew 
record("CustFname") = Request.Form("first") 
record("CustLName") = Request.Form("last")
record("CustID") = Request.Form("username")
record("CustPassword") = Request.Form("password")
record("CustEmail") = Request.Form("email") 
record("CustGender") = Request.Form("sex")
record("CustQuestion") = Request.Form("squestion")
record("CustAnswer") = Request.Form("sanswer")
record("CustAddr1") = Request.Form("address")
record("CustCity") = Request.Form("city")
record("CustZip") = Request.Form("postalcode")
record("CustCountry") = Request.Form("country")
record.Update 



record.Close 
Set record = Nothing 
cn.Close 
Set cn = Nothing 

%>
</div>

						<br><p align="center">Click below to return our Home page or Login</p>

<div align="center">
                          <INPUT name="BUTTON1" TYPE="BUTTON"  
       onClick="location.href='index.html';" VALUE="Return Home">
                          <INPUT name="BUTTON2" TYPE="BUTTON"  
       onClick="location.href='registration.html';" VALUE="Login">
	   </div>
                        </form>
						<h2 align="center" class="">&nbsp;</h2>
						<p class="">&nbsp;</p>
						<div class="wrapper">
							<figure class="left marg_right1"></figure>
							<p class="pad_bot1">&nbsp;</p>
					  </div>
					</section>
			  </div>
			</article>
		</div>
	</div>
	<div class="body4">
		<div class="main">
			<article id="content2">
				<div class="wrapper">
					<section class="col3">
						<h4>Why Us?</h4>
						<ul class="list1">
							<li><a href="#">Easy</a></li>
							<li><a href="#">Safe</a></li>
							<li><a href="#">Fast </a></li>
							<li><a href="#">Affordable</a></li>
						</ul>
					</section>
					<section class="col3 pad_left2">
						<h4>Address</h4>
						<ul class="address">
							<li><span>Country:</span>Cayman Islands</li>
							<li><span>City:</span>Grand Cayman</li>
							<li><span>Phone:</span>1 (345) 623 8224</li>
							<li><span>Email:</span><a href="mailto:">info@setraders.com</a></li>
						</ul>
					</section>
					<section class="col3 pad_left2">
						<h4>Follow Us</h4>
						<ul id="icons">
							<li><a href="#"><img src="images/icon1.jpg" alt="">Facebook</a></li>
							<li><a href="#"><img src="images/icon2.jpg" alt="">Twitter</a></li>
							<li><a href="#"><img src="images/icon3.jpg" alt="">LinkedIn</a></li>
							<li><a href="#"><img src="images/icon4.jpg" alt="">Delicious</a></li>
						</ul>
					</section>
					<section class="col3 right">
						<h4>Newsletter</h4>
						<form id="newsletter" method="post">
							<div>
								<div class="wrapper">
									<input class="input" type="text" value="Type Your Email Here"  onblur="if(this.value=='') this.value='Type Your Email Here'" onFocus="if(this.value =='Type Your Email Here' ) this.value=''" >
								</div>
								<a href="#" class="button" onClick="document.getElementById('newsletter').submit()">Subscribe</a>
							</div>
						</form>
					</section>
				</div>
			</article>
<!-- content end -->
		</div>
	</div>
		<div class="main">

		</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>