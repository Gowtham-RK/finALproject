<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
	<%! String mess="";%>
<%
	response.setHeader("Cache-Control","no-store, no-cache, must-revalidate");
	response.setHeader("expires","now");
	response.setHeader("pragma","no-cache");
%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>Feedback Session</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
<script type="text/javascript">
</script>
</head>
<body>
	<form name="contact" method="post">
  <div id="wrapper">
    <div id="header"> </div>
    <div id="left">
      <div id="logo">
        <h1>Web service recommendation</h1>
        <p></p>
      </div>
      <div id="nav">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="userregister.jsp">Register</a></li>
          <li><a href="userlogin.jsp">Login</a></li>
          <li><a href="">Clients</a></li>
          <li><a href="logout.jsp">Logout</a></li>
          <li class="important"><a href="contact.jsp">Contact us</a></li>
        </ul>
      </div>
      <div id="news">
        <h2>Latest News</h2>
        <h3>02/03/14</h3>
        <p>Even more websites all about website templates on <a href="http://www.justwebtemplates.com">Just Web Templates</a>.</p>
        <div class="hr-dots"> </div>
     <h3>02/03/14</h3>
        <p>If you're looking for beautiful and professionally made templates you can find them at <a href="http://www.templatebeauty.com">Template Beauty</a>.</p>
        <p class="more"><a href="http://www.freewebsitetemplates.com">more</a></p>
      </div>
      <div id="support">
        <p>Call: 9952649690</p>
      </div>
    </div>
    <div id="right">
      <h2>Evaluation Page</h2><br /><br /><br />
      <%if(request.getAttribute("Valid")!=null){
		  mess=(String)request.getAttribute("Valid");%>
		  <h4 align="center">The Evaluation Result is..<%out.println(mess);%></h4>
		  <%} %>
    </div>
    <div class="clear"> </div>
    <div id="spacer"> </div>
    <div id="footer">
      <div id="copyright">
       
      </div>
	  <div id="footerline"></div>
    </div>

  </div>
  </form>
</body>
</html>
