<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%    
    String FirstName = request.getParameter("FirstName");
    String EmailId = request.getParameter("EmailId");
    String CityName = request.getParameter("CityName");
    String LastName = request.getParameter("LastName");
    String MobileNo = request.getParameter("MobileNo");
    String Password = request.getParameter("Password");

    try 
    {
        PreparedStatement pstmt = null;
        PreparedStatement pstn1 = con.prepareStatement("select * from registration where MobileNumber=?");
        pstn1.setString(1, MobileNo);
        ResultSet rs = pstn1.executeQuery();
        if (!rs.next()) 
        {
            pstmt = con.prepareStatement("insert into registration(FirstName, LastName, MobileNumber, EmailId, CityName, Password) value(?,?,?,?,?,?)");
            pstmt.setString(1, FirstName);
            pstmt.setString(2, LastName);
            pstmt.setString(3, MobileNo);
            pstmt.setString(4, EmailId);
            pstmt.setString(5, CityName);
            pstmt.setString(6, Password);
            pstmt.executeUpdate();
            %>
                <script>
                    alert("Register Successfull");
                    window.location = "login.jsp";
                </script>
            <%
        } 
        else 
        {
            %>
                <script>
                    alert("User already exist");
                    window.location = "Registration.jsp";
                </script>
            <%
        }
    } 
    catch (Exception e) 
    {
        System.out.println(e);
        %>
            <script>
                alert("Please Enter Detail Again..............");
                window.location = "Registration.jsp";
            </script>
        <%
    }
%>