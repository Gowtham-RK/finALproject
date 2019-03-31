<!DOCTYPE html>
	
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>Data Mining</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
<script type="text/javascript">
function getUpload(){
	var urlpath=document.upload.urlpath.value;
        var c = document.upload.cat.value;
        var d = document.upload.des.value;
        var e = document.upload.des2.value;
        var f = document.upload.des3.value;
        var g = document.upload.des4.value;
        var h = document.upload.des5.value;
	if(urlpath==0){
		alert("Fields are Required");
                document.getElementById("urlpath").focus();
                return false;
	}
        if(c==0){
		alert("Enter the Category");
                 document.getElementById("cat").focus();
                return false;
	}
         if(d==0){
		alert("Enter the URL 1");
                 document.getElementById("des").focus();
                return false;
	}
        if(e==0){
		alert("Enter the URL 2");
                 document.getElementById("des2").focus();
                return false;
	}if(f==0){
		alert("Enter the URL 3");
                 document.getElementById("des3").focus();
                return false;
	}if(g==0){
		alert("Enter the URL 4");
                 document.getElementById("des4").focus();
                return false;
	}if(h==0){
		alert("Enter the URL 5");
                 document.getElementById("des5").focus();
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
      <div id="support"> </div>
    </div>
    <div id="right">
      <h2>Admin Indexing</h2><br /><br /><br />
      <table align="center" height="150">
          <%
          
if(request.getParameter("msg")!=null){
out.println("<script>alert('Url Register sucess')");
}
        if(request.getParameter("msgr")!=null){
out.println("<script>alert('Url Register not sucess')");
}

%>
     
                 <form name="upload" action="upload.jsp"  method="get" onsubmit="return getUpload()">
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">KEYWORD</td>
                        <td>&nbsp;<input type="text" name="urlpath" id="urlpath"/></td>
    		</tr>
                <tr>
    			<td style="font-family:verdana;font-size:11px;">CATEGORY</td>
    			<td>&nbsp;<input type="text" name="cat" id="cat"/></td>
    		</tr>
                     <tr>
    			<td style="font-family:verdana;font-size:11px;">URL1</td>
    			<td>&nbsp;<input type="text" name="des" id="des"/></td>
    		</tr>
                     <tr>
    			<td style="font-family:verdana;font-size:11px;">URL2</td>
    			<td>&nbsp;<input type="text" name="des2" id="des2"/></td>
    		</tr><tr>
    			<td style="font-family:verdana;font-size:11px;">URL3</td>
    			<td>&nbsp;<input type="text" name="des3" id="des3"/></td>
    		</tr><tr>
    			<td style="font-family:verdana;font-size:11px;">URL4</td>
    			<td>&nbsp;<input type="text" name="des4" id="des4"/></td>
    		</tr><tr>
    			<td style="font-family:verdana;font-size:11px;">URL5</td>
    			<td>&nbsp;<input type="text" name="des5" id="des5"/></td>
    		</tr>
    		<tr>
    			<td>&nbsp;</td>
    			<td colspan="2">
    				<input type="submit" value="Upload" />
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

</body>
</html>
