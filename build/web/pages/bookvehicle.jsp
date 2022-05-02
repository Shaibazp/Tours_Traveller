<%@ include file="DB_Connection.jsp"%>
<%
    String unm = (String)session.getAttribute("Userid").toString();
    String vid = request.getParameter("vid");
    String basef = request.getParameter("basef");
    
    String source = (String)session.getAttribute("source").toString();
    String destination = (String)session.getAttribute("destination").toString();
    
    try
    {
        PreparedStatement pstn1 = con.prepareStatement("select * from registration where MobileNumber=? ");
        pstn1.setString(1, unm);
        ResultSet rs = pstn1.executeQuery();
        if (rs.next()) 
        {
            String ufname = rs.getString(2);
            String ulname = rs.getString(3);
            String ufullnm = ufname+" "+ulname;
            String umailid = rs.getString(5);
            
            PreparedStatement pstn2 = con.prepareStatement("select * from vehicle where id=? ");
            pstn2.setString(1, vid);
            ResultSet rs2 = pstn2.executeQuery();
            if (rs2.next()) 
            {
                String cname = rs2.getString(2);
                String acnonac = rs2.getString(3);
                String vtype = rs2.getString(4);
                String drivname = rs2.getString(5);
                String drivcontno = rs2.getString(6);
                String km  = rs2.getString(7);
                
                PreparedStatement pstn3 = con.prepareStatement("insert into vehiclebooking(ufullnm, contno, umailid, source, destination, cname, acnonac, vtype, drivname, drivcontno, km, basef) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                pstn3.setString(1, ufullnm);
                pstn3.setString(2, unm);
                pstn3.setString(3, umailid);
                pstn3.setString(4, source);
                pstn3.setString(5, destination);
                pstn3.setString(6, cname);
                pstn3.setString(7, acnonac);
                pstn3.setString(8, vtype);
                pstn3.setString(9, drivname);
                pstn3.setString(10, drivcontno);
                pstn3.setString(11, km);
                pstn3.setString(12, basef);
                pstn3.executeUpdate();
                //response.sendRedirect("Location.jsp?desc="+destination);
                %>
                <script>
                    alert("Your Cab is book successfully");
                    window.window.location="uhotel.jsp";
                    </script>
                <%
                
            }
        }
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>
