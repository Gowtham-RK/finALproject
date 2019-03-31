<!DOCTYPE html>
<%! String mess="";%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>Data Mining</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="ISO-8859-1" />
<script type="text/javascript">
function getRegister(){
	var username=document.register.username.value;
	var password=document.register.password.value;
	var repassword=document.register.repassword.value;
	var emailid=document.register.emailid.value;
	var contact=document.register.contact.value;
	var patt=new RegExp("@");
	if(username=="" || password=="" || repassword=="" || emailid=="" || contact==""){
		alert("Fields are Required");
                return false;
	}else if(password!=repassword){
		alert("Confirm Passwords are Mismatched");
                return false;
	}else if(patt.test(emailid)==false){
		alert("Email address should contain @");
                return false;
	}else if(isNaN(contact)){
		alert("Enter the correct Mobile Number in Integer");
                return false;
	}else if(contact.length<10){
		alert("Enter the 10 Digit Mobile Number");
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
          <li class="important"><a href="userregister.jsp">Register</a></li>
          <li><a href="userlogin.jsp">Login</a></li>         
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
      <h2>User Register</h2><br /><br /><br />
      <form name ="register" action="regaction.jsp" method="get" onsubmit="return getRegister()">
      <table align="center" height="270">
      <%if(request.getAttribute("InValid")!=null){
		  mess=(String)request.getAttribute("InValid");
		 %>
		 <h4><%out.println(mess);%></h4>
		 <%}%>
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">Username</td>
    			<td>&nbsp;<input type="text" name="username"/></td>
    		</tr>
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">Password</td>
    			<td>&nbsp;<input type="password" name="password" size="21"/></td>
    		</tr>
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">Re password</td>
    			<td>&nbsp;<input type="password" name="repassword" size="21"/></td>
    		</tr>
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">Emailid</td>
    			<td>&nbsp;<input type="text" name="emailid"/></td>
    		</tr>
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">Contact</td>
    			<td>&nbsp;<input type="text" name="contact"/></td>
    		</tr>
    		<tr>
    			<td>&nbsp;</td>
    			<td colspan="2"><input  type="submit" value="Register" />
    			</td>
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
