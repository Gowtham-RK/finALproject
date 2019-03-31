<!DOCTYPE html >
	<%! String mess="";%>
<%
	response.setHeader("Cache-Control","no-store, no-cache, must-revalidate");
	response.setHeader("expires","now");
	response.setHeader("pragma","no-cache");
%>
<html >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>Data Mining</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
<script type="text/javascript">
function getSearch(){
	var inp_keyword=document.search.inp_keyword.value;
	if(inp_keyword==""){
		alert("Fields are Required");
	}
    }
</script>
</head>
<body>
     <%if(request.getParameter("msg")!=null){
	out.println("<script>alert('Wellcome')</script>");	 
		 
		}%>
                
	<%
String me= session.getAttribute("me").toString();        


%>
                
  <div id="wrapper">
    <div id="header"> </div>
    <div id="left">
      <div id="logo">
       
      </div>
      <div id="nav">
        <ul>
         <li class="important"><a href="usersearch.jsp">Search</a></li>
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
    </div>
    <div id="right">
      <h2>User Search</h2><br /><br /><br />
      <table align="center" height="150">
          <form name="search" action="final.jsp" method="get" onsubmit="getSearch()">
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">Keyword</td>
    			<td>&nbsp;<input type="text" name="key"/></td>
    		</tr>
    		<tr>
    			<td>&nbsp;</td>
    			<td colspan="2">
                            <input type="submit" name="Search" value="Search"  />
                                 </form>
    			</td>
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
<div style="position: absolute; left:650px; top: 100px">
    <font color="red"><b><%=me%></b></font>
</div>
</body>
</html>
