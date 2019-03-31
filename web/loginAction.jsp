<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

String username = request.getParameter("username");
            String password = request.getParameter("password");      
                       
               if((username.equalsIgnoreCase("admin"))&&(password.equals("admin"))){
            response.sendRedirect("adminindexing.jsp");
            
        }else{           
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rfalgorithm","root","root");
            Statement st = con.createStatement();
            String Q = "select * from regpage where user= '"+username+"'   ";                    
                    ResultSet rs = st.executeQuery(Q);          
                    
                    if(rs.next()){                        
         
                    if((rs.getString("user").equals(username))&&(rs.getString("pass").equals(password))){
                        session.setAttribute("me", username);
             response.sendRedirect("usersearch.jsp?msg=login sucess");            
                        
                    }
                    else{
                     response.sendRedirect("userlogin.jsp?msgrr=password error");
                    }
            
                       
                    }
                    else{
                        response.sendRedirect("userlogin.jsp?msgrr=password error");
                      
                    }
               
        
               }
       %>