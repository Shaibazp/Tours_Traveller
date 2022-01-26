
<%
    session.getAttribute("Userid").toString();
    session.invalidate();
    response.sendRedirect("login.jsp");
    
%>