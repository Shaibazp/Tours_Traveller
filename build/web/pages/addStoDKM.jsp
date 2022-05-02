<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%    
    String pname = request.getParameter("pname");
    String snm = request.getParameter("snm");
    String skm = request.getParameter("skm");

    try 
    {
        PreparedStatement pstmt = null;
            pstmt = con.prepareStatement("insert into SrcToDes(pname, snm, skm) value(?,?,?)");
            pstmt.setString(1, pname);
            pstmt.setString(2, snm);
            pstmt.setString(3, skm);
            pstmt.executeUpdate();
            response.sendRedirect("Tourism.jsp");
    } 
    catch (Exception e) 
    {
        System.out.println(e);
    }
%>