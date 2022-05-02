
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javafx.scene.input.DataFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/addreview")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class savereview extends HttpServlet 
{

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/tours_traveller";
    private String dbUser = "root";
    private String dbPass = "root";
    
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException 
    {
        HttpSession ss = request.getSession();
        // gets values of text fields
        String comment = request.getParameter("comment");
        String hstar = request.getParameter("hstar");
        String htname = (String)ss.getAttribute("hotelname").toString();
        String uname = null;
        String uid  = (String)ss.getAttribute("Userid").toString();
        
        
        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo1");
        
        if (filePart != null) 
        {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
        LocalDateTime now = LocalDateTime.now();  
        System.out.println(dtf.format(now)); 

        try 
        {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            PreparedStatement pstmt1 = conn.prepareStatement("select * from registration where MobileNumber=?");
            pstmt1.setString(1, uid);
            ResultSet rst = pstmt1.executeQuery();
            if(rst.next())
            {
                uname = rst.getString(2);
                
                // constructs SQL statement
                String sql = "insert into review(htname, uname, coment, rating, img1, sdate) value(?,?,?,?,?,?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, htname);
                pstmt.setString(2, uname);
                pstmt.setString(3, comment);
                pstmt.setString(4, hstar);

                if (inputStream != null) {
                    // fetches input stream of the upload file for the blob column
                    pstmt.setBlob(5, inputStream);
                }
                pstmt.setString(6, dtf.format(now));
                // sends the statement to the database server
                int row = pstmt.executeUpdate();
                if (row > 0) {
                    //message = "File uploaded and saved into database";
                    //System.out.println("File uploaded and saved into database");
                    response.sendRedirect("pages/addreview.jsp");
                }
            }

            
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }
}
