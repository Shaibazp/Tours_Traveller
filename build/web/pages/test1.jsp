<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="DB_Connection.jsp"%>
<%    String region = "North";//request.getParameter("region");
    String season = "Summer";//;request.getParameter("location");
    String city = "";//request.getParameter("city");

    if (region != (null)) {
        //System.out.println("region");
        try {
            PreparedStatement pstn1 = con.prepareStatement("select * from places where reagion=? AND season=?");
            pstn1.setString(1, region);
            pstn1.setString(2, season);
            ResultSet rs = pstn1.executeQuery();
            while (rs.next()) {
                String location = rs.getString(3);
                                        System.out.println(location);
                                        //Blob image = rs.getBlob(7);
                                        byte[ ] imgData = rs.getBytes(7);
                                        String encode = Base64.getEncoder().encodeToString(imgData);
                                        request.setAttribute("imgbase", encode);
%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<div class="container">

<div class="card" style="width: 18rem;">
    <img src="data:image/jpeg;base64,${imgbase}" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title"><%=rs.getString(2)%></h5>
        <p class="card-text"><%=rs.getString(6)%></p>
        <a href="#" class="btn btn-primary">Visite</a>
    </div>
</div>


<div class="card mb-3">
    <img src="../assets/images/car-2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><%=rs.getString(3)%></h5>
    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    <a href="#" class="btn btn-primary">Visite</a>
  </div>
</div>
    <div class="card-deck">
  <div class="card">
    <img src="..." class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title"><%=rs.getString(3)%></h5>
      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  
  
</div>
</div><%
            }
        } catch (Exception e) {
            System.out.println(e);
        }

    } else {
        System.out.println("city");
    }

%>