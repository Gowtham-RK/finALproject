<!DOCTYPE html>
	
<html>
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
  <div id="wrapper">
    <div id="header"> </div>
    <div id="left">
      <div id="logo">       
      </div>
      <div id="nav">
        <ul>          
          <li class="important"><a href="usersearch.jsp">Edit Indexing</a></li>
          <li><a href="adminindexing.jsp">Indexing</a></li> 
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
      <h2>Edit Indexing</h2><br /><br /><br />
      <table align="center" height="150">
          <form name="search" action="admin.jsp" method="get" onsubmit="getSearch()">
    		<tr>
    			<td style="font-family:verdana;font-size:11px;">Keyword</td>
    			<td>&nbsp;<input type="text" name="key"/></td>
    		</tr>
              <tr>
    			<td style="font-family:verdana;font-size:11px;">Category</td>
    			<td>&nbsp;<input type="text" name="cat"/></td>
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

</body>
</html>
