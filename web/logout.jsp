<!DOCTYPE >
	<%! String mess="";%>
<%
	response.setHeader("Cache-Control","no-store, no-cache, must-revalidate");
	response.setHeader("expires","now");
	response.setHeader("pragma","no-cache");
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>Data Mining</title>
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
        
      </div>
      <div id="nav">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="userregister.jsp">Register</a></li>
          <li><a href="userlogin.jsp">Login</a></li>         
          <li  class="important"><a href="logout.jsp">Logout</a></li>
          <li><a href="contact.jsp">Contact us</a></li>
        </ul>
      </div>
      <div id="news">       
       <p></p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      </div>
      <div id="support">
       
      </div>
    </div>
    <div id="right">
      <h2>Logout Page</h2><br /><br /><br />
      <table align="center" height="150">
    		<tr>
    			<td>You are Successfully logged out.click here to login...<a href="userlogin.jsp">Login</a></td>
    		</tr>
      </table>
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
