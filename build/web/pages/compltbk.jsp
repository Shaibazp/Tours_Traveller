<%@ include file="DB_Connection.jsp"%>
<%
    String Userid = (String)session.getAttribute("Userid").toString();
    String hotelnm = request.getParameter("hotelnm");
    String checkin = request.getParameter("checkin");
    String checkout = request.getParameter("checkout");
    String noperson = request.getParameter("noperson");
    String noroom = request.getParameter("noroom");
    String checkouttime = request.getParameter("checkouttime");
    String hotelrate = request.getParameter("hotelrate");
    String tot = request.getParameter("tot");
    
    String vehiclename = request.getParameter("vehiclename");
    String sourcenm = request.getParameter("sourcenm");
    String destinationnm = request.getParameter("destinationnm");
    String vehicletype = request.getParameter("vehicletype");
    String acnonac = request.getParameter("acnonac");
    String drivernm = request.getParameter("drivernm");
    String contactno = request.getParameter("contactno");
    String dist = request.getParameter("dist");
    String vtot = request.getParameter("vtot");
    String finaltot = request.getParameter("finaltot");
    
    try
    {
        PreparedStatement pstmt = null;
        pstmt = con.prepareStatement("insert into finalbook(Userid, hotelnm, checkin, checkout, noperson, noroom, checkouttime, hotelrate, tot, vehiclename, sourcenm, destinationnm, vehicletype, acnonac, drivernm, contactno, dist, vtot, finaltot) value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pstmt.setString(1, Userid);
        pstmt.setString(2, hotelnm);
        pstmt.setString(3, checkin);
        pstmt.setString(4, checkout);
        pstmt.setString(5, noperson);
        pstmt.setString(6, noroom);
        pstmt.setString(7, checkouttime);
        pstmt.setString(8, hotelrate);
        pstmt.setString(9, tot);
        pstmt.setString(10, vehiclename);
        pstmt.setString(11, sourcenm);
        pstmt.setString(12, destinationnm);
        pstmt.setString(13, vehicletype);
        pstmt.setString(14, acnonac);
        pstmt.setString(15, drivernm);
        pstmt.setString(16, contactno);
        pstmt.setString(17, dist);
        pstmt.setString(18, vtot);
        pstmt.setString(19, finaltot);
        pstmt.executeUpdate();
        response.sendRedirect("bookhistory.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    

%>