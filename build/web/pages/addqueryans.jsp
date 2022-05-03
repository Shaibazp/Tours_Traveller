
<%@ include file="SendMail.jsp"%>
<%@ include file="DB_Connection.jsp"%>
<%
    String uid = request.getParameter("uid");
    String mailid = request.getParameter("mailid");
    String query = request.getParameter("query");
    String qans = request.getParameter("qans");
    System.out.println(uid+"=="+mailid+"="+query+"=="+qans);
    try
    {
        PreparedStatement pstn1 = con.prepareStatement("update query set qans=?, qstatus=? where qid=?");
        pstn1.setString(1, qans);
        pstn1.setString(2, "1");
        pstn1.setString(3, uid);
        pstn1.executeUpdate();
        
        String to2 = mailid;
            String subject2 = "Smart Tourism";
            String msg2 = "Dear User,\n\nThank you for using Smart Tourism Application, your query is answered please check .\n\nQuery = "+query+"\n\nAnswer = "+qans+"\n\nif you have any query, please drop a mail on the given email-id.\nsmart.tourism@gmail.com\n\nRegards,\nSmart Tourism Team";//request.getParameter("msg");//
            send(to2, subject2, msg2);

            response.sendRedirect("helpdesk.jsp");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>