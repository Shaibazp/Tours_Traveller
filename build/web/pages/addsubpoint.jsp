<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%    
    String placename = request.getParameter("placename");
    String Pointnm = request.getParameter("Pointnm");
    String Discription = request.getParameter("Discription");
    String Nodays = request.getParameter("Nodays");

    try 
    {
        PreparedStatement pstmt = null;
            pstmt = con.prepareStatement("insert into subplace(placename, Pointnm, Discription, Nodays) value(?,?,?,?)");
            pstmt.setString(1, placename);
            pstmt.setString(2, Pointnm);
            pstmt.setString(3, Discription);
            pstmt.setString(4, Nodays);
            pstmt.executeUpdate();
            //response.sendRedirect("Tourism.jsp");
            %>
            <script>
                window.alert("Tourist Point added successfully...");
                window.location = "addTouristpoint.jsp";
                </script>
            <%
    } 
    catch (Exception e) 
    {
        System.out.println(e);
    }
%>