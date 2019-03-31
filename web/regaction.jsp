<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String name = request.getParameter("username");
            String user = request.getParameter("password");
            String pass = request.getParameter("repassword");
            String loc = request.getParameter("emailid");
            String s = request.getParameter("contact");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rfalgorithm", "root", "root");
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into regpage values('" + name + "','" + user + "','" + pass + "','" + loc + "','" + s + "')");
            if (i != 0) {

               response.sendRedirect("index.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("index.jsp?msgr=Register fails");
            }
            %>