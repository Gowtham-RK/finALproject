<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Mining</title>
        <link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
    </head>
    <%
    if(request.getParameter("msg")!=null){
        out.println("<script>alert('Register Success')</script>");
        
    }
    if(request.getParameter("msgr")!=null){
        out.println("<script>alert('Register Not Success')</script>");
        
    }

%>
    <body>
        <div id="wrapper">
    <div id="header"> </div>
    <div id="left">
      <div id="logo">       
       
      </div>
      <div id="nav">
        <ul>
          <li class="important"><a href="index.jsp">Home</a></li>
          <li><a href="userregister.jsp">Register</a></li>
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
        <p></p>
      </div>
    </div>
    <div id="right">
      <h2>Random Forest Algorithm In Inferring User Search Goals With Web Page Recommendation</h2>
      <div id="welcome">
        <img src="images/3.jpg" width="171" height="137" alt="Pic 1" class="left" />
        <p>An increasing number of databases have become web accessible through HTML form-based search interfaces. The data units returned from the underlying database are usually encoded into the result pages dynamically for human browsing. The inference and analysis of user search goals can be very useful in improving search engine relevance and user experience. In this paper, we propose a novel approach to infer user search goals by analyzing search engine query logs. First, we propose a framework to discover different user search goals for a query by clustering the proposed web page recommendation sessions. Second, we propose a novel approach to generate pseudo-documents to self-renewal and adaptive algorithm for clustering. Finally, we propose on analysis on the characteristics of random forest method, presents how to realize the self-adaptation ability with random forest method in similar situations, and verified the feasibility of the new method of using the actual data, and analysis and discussion of how to further research and improve the random forest method in big data environment.</p>
      </div>
      
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
