<!DOCTYPE html>
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
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8"/>
<script type="text/javascript">
function getLogin(){
	var username=document.login.username.value;
	var password=document.login.password.value;
	if(username=="" || password==""){
		alert("Fields are Required");
                return false;
        }
}
</script>
</head>
<body>
	
  <div id="wrapper">
    <div id="header"> </div>
    <div id="left">
      <div id="logo">
       
      </div>
      <div id="nav">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="userregister.jsp">Register</a></li>
          <li class="important"><a href="userlogin.jsp">Login</a></li>         
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
      <h2>	Login</h2><br/><br /><br/>
      <%if(request.getParameter("msgrr")!=null)
		{		 
			out.println("<script>alert('Error Found')</script>");
        }
		%>	
      <form action="loginAction.jsp" name="login" method="get" onsubmit="return getLogin()">
      <table height="82" align="center">      
    		<tr>                    
    			<td style="font-family:verdana;font-size:11px">Username</td>
    			<td><input type="text" name="username"/></td>
    		</tr>
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">Password</td>
    			<td><input type="password" name="password" size="21"/></td>                       
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" name="Login" value="Login" /><td>
    		</tr>
    	</table>
      </form>
    </div>
    <div class="clear"> </div>
    <div id="spacer"> </div>
    <div id="footer">
      <div id="copyright">
        
      </div>
	  <div id="footerline"></div>
    </div>

  </div>
 
</body>
</html>
