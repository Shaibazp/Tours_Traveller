<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.ParseException"%>
<%@ include file="DB_Connection.jsp"%>
<%    
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    session.setAttribute("Userid", username);

    try 
    {

        PreparedStatement pstmt = con.prepareStatement("select * from registration where MobileNumber=? and Password=?");
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) 
        {
            response.sendRedirect("welcome.jsp");
        }
        else
        {
            %>
                <script>
                    alert("Please Enter Valid Detailed");
                    window.location = "login.jsp";
                </script>
        <%
        }
    } 
    catch (Exception e) 
    {
        System.out.println(e);
        %>
            <script>
                alert("Please Enter Valid Detailed");
                window.location = "login.jsp";
            </script>
        <%
    }
%>