<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

            String u = request.getParameter("urlpath");
            String c = request.getParameter("cat");                
            String d = request.getParameter("des"); 
            String d2 = request.getParameter("des2"); 
            String d3 = request.getParameter("des3"); 
            String d4 = request.getParameter("des4"); 
            String d5 = request.getParameter("des5"); 
System.out.println(" this is "  +u+c+d);                          
              
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rfalgorithm","root","root");
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into admin (key_,cat,des,des2,des3,des4,des5)values('" + u+ "','" + c + "','" + d + "','" + d2 + "','" + d3 + "','" + d4 + "','" + d5 + "')");
            if (i != 0) {

               response.sendRedirect("adminindexing.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("adminindexing.jsp?msgr=Register fails");
            }
              
       %>