<%@ include file="DB_Connection.jsp"%>
<%
    String Userid = (String)session.getAttribute("Userid").toString();
    String checkindt = request.getParameter("checkindt");
    String checkoutdt = request.getParameter("checkoutdt");
    String roomno = request.getParameter("roomno");
    String noperson = request.getParameter("noperson");
    String bktime = request.getParameter("bktime");
    String hotelnm = (String)session.getAttribute("hotelnm").toString();
    String hotelrate = (String)session.getAttribute("hotelrate").toString();
    
    try
    {
        PreparedStatement pstmt = null;
        pstmt = con.prepareStatement("insert into hotelbook(Userid, checkindt, checkoutdt, roomno, noperson, bktime, hotelnm, hotelrate) value(?,?,?,?,?,?,?,?)");
            pstmt.setString(1, Userid);
            pstmt.setString(2, checkindt);
            pstmt.setString(3, checkoutdt);
            pstmt.setString(4, roomno);
            pstmt.setString(5, noperson);
            pstmt.setString(6, bktime);
            pstmt.setString(7, hotelnm);
            pstmt.setString(8, hotelrate);
            pstmt.executeUpdate();
            response.sendRedirect("bookdetails.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>