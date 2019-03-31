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
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
<script type="text/javascript">
</script>
</head>
<body>
	<form name="success" method="post">
  <div id="wrapper">
    <div id="header"> </div>
    <div id="left">
      <div id="logo">
       
      </div>
      <div id="nav">
        <ul>
         <li class="important"><a href="adminindexing.jsp">Indexing</a></li>
          <li><a href="edit.jsp">Edit Indexing</a></li>
          <li><a href="logout.jsp">Logout</a></li>        
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
    <div id="right">
      <h2>Admin Success</h2><br /><br /><br />
      <%if(request.getAttribute("Valid")!=null){
		  mess=(String)request.getAttribute("Valid");
		 %>
		 <h4 align="center"><%out.println(mess);%><a href="adminindexing.jsp">Continue</a></h4>
		 <%}%>
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
