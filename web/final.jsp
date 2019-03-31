<%@page import="pack.DatabaseConnetion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html >
<%
    response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
    response.setHeader("expires", "now");
    response.setHeader("pragma", "no-cache");
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
        <form name="search_link" method="post">
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
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
        <p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
      	<p>&nbsp;</p>
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
                    <h2>User Search Result</h2><br /><br /><br />
                    <div style=" float:left;overflow:scroll; width: 600px; text-align:justify">
                    <%
                    
                 	String k = request.getParameter("key");   
                  	String me = session.getAttribute("me").toString();  
                    
                    Connection connection = DatabaseConnetion.getconnection();
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery("select * from  log_ where user = '"+me+"'");
                    
                    if(resultSet.next())
					{
                        int queryUpdate = statement.executeUpdate("update log_  set cat = '"+k+"',key_= '"+session.getAttribute("ke").toString() +"' where user = '"+me+"' ");
                    }
					else
					{
                        int queryUpdate = statement.executeUpdate("insert into log_ values('"+k+"','"+me+"','"+session.getAttribute("ke").toString() +"')");
                           
                    }
                    
                        String ke = null, c = null, d = null, d2 = null, d3 = null, d4 = null, d5 = null;
                        
						Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rfalgorithm", "root", "root");
                        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/rfalgorithm", "root", "root");
                        
						Statement st1 = con1.createStatement();
                        Statement st = con.createStatement();

                        ResultSet rs = st.executeQuery("select * from admin where cat= '" + k + "' ");

                        while (rs.next()) 
						{

                            ke = rs.getString("key_");
                            c = rs.getString("cat");
                            d = rs.getString("des");
                            d2 = rs.getString("des2");
                            d3 = rs.getString("des3");
                            d4 = rs.getString("des4");
                            d5 = rs.getString("des5");


                    %>

                    <font size="+2" color="red">
                        <%=c%><br><br></font>
                        <font size="+2" color="green"><a href="<%=d%>"> <%=d%></a></br>
                        <font size="+2" color="green"><a href="<%=d2%>"> <%=d2%></a></br>
                        <font size="+2" color="green"><a href="<%=d3%>"> <%=d3%></a></br>
                        <font size="+2" color="green"><a href="<%=d4%>"> <%=d4%></a></br>
                        <font size="+2" color="green"><a href="<%=d5%>"> <%=d5%></a></br>
          
                    </font>
                    <%
                        }
                    %>

                </div>
                <div class="clear"> </div>
                <div id="spacer"> </div>
          </div>
        </form>
    </body>
</html>
