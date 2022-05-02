<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%    
    String cnm = request.getParameter("cnm");
    String acnonac = request.getParameter("acnonac");
    String vtype = request.getParameter("vtype");
    String dname = request.getParameter("dname");
    String dcno = request.getParameter("dcno");
    String kmrate = request.getParameter("kmrate");
    
    try 
    {
        PreparedStatement pstmt = null;
            pstmt = con.prepareStatement("insert into vehicle(cnm, acnonac, vtype, dname, dcno, kmrate) value(?,?,?,?,?,?)");
            pstmt.setString(1, cnm);
            pstmt.setString(2, acnonac);
            pstmt.setString(3, vtype);
            pstmt.setString(4, dname);
            pstmt.setString(5, dcno);
            pstmt.setString(6, kmrate);
            pstmt.executeUpdate();
            response.sendRedirect("addvehicle.jsp");
    } 
    catch (Exception e) 
    {
        System.out.println(e);
    }
%>