<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%    
    String placenm = request.getParameter("placenm");
    String duration = request.getParameter("duration");
    String season = request.getParameter("season");
    String reagion = request.getParameter("reagion");
    String info = request.getParameter("info");

    try 
    {
        PreparedStatement pstmt = null;
            pstmt = con.prepareStatement("insert into places(placenm, duration, season, reagion, info, img1, img2) value(?,?,?,?,?,?,?)");
            pstmt.setString(1, placenm);
            pstmt.setString(2, duration);
            pstmt.setString(3, season);
            pstmt.setString(4, reagion);
            pstmt.setString(5, info);
            pstmt.executeUpdate();
            response.sendRedirect("Places.jsp");
    } 
    catch (Exception e) 
    {
        System.out.println(e);
    }
%>