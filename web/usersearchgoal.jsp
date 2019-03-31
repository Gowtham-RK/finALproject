<%@page import="pack.DatabaseConnetion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; 
              charset=utf-8"/>

        <title>Data Mining</title>
        <link rel="stylesheet" href="style.css" type="text/css" 
              charset="utf-8" />
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
                    <h2>User Search Result</h2><br /><br /><br />
                    <%
                        String k = request.getParameter("key");
                        session.setAttribute("ke", k); 
                        String me = session.getAttribute("me").toString();
                        String ke = null, c = null, d = null;
                        String ke1 = null, c1 = null;
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DatabaseConnetion.getconnection();
                        Statement st = con.createStatement();
                        Statement st1 = con.createStatement();
                        ResultSet rs1 = st1.executeQuery("select * from log_ where user='" + me + "' and key_ = '"+k+"' ");
                        if (rs1.next()) {
                            System.out.println("RFA working");
                            ke1=rs1.getString("key_");
                            c1 = rs1.getString("cat");
                        } else {
                               c1 = " ";
                               ke1 = " ";
                        }

                    %>
                    <font size="+2" color="red">
                         <%=ke1%><br>
                            <a href="final.jsp?key=<%=c1%>"><%=c1%></a><br>

                                </font>
                                <%


                                    ResultSet rs = st.executeQuery("select * from admin where key_= '" + k + "' ");
                                    while (rs.next()) {

                                        ke = rs.getString("key_").replace(ke1," ");
                                        c = rs.getString("cat").replace(c1," ");
                                        
                                       %>



                                <font size="+2" color="red">
                                    <%=ke%><br>
                                        <a href="final.jsp?key=<%=c%>"><%=c%></a><br>

                                            </font>
                                            <%
                                                }

                                            %>



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
