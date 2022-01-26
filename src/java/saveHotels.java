import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/hotelUrl")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class saveHotels extends HttpServlet 
{
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/tours_traveller";
    private String dbUser = "root";
    private String dbPass = "root";
    
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException 
    {
        // gets values of text fields
        String hotelnm = request.getParameter("hotelnm");
        String placenm = request.getParameter("placenm");
        String hreagion = request.getParameter("hreagion");
        String hstar = request.getParameter("hstar");
        String haddress = request.getParameter("haddress");
        String hmobileno = request.getParameter("hmobileno");
        String hlandline = request.getParameter("hlandline");
        String hinfo = request.getParameter("hinfo");
        
        InputStream inputStream = null; // input stream of the upload file
        InputStream inputStream2 = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo1");
        Part filePart1 = request.getPart("photo2");
        
        if (filePart != null) 
        {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        if (filePart1 != null) 
        {
            // prints out some information for debugging
            System.out.println(filePart1.getName());
            System.out.println(filePart1.getSize());
            System.out.println(filePart1.getContentType());

            // obtains input stream of the upload file
            inputStream2 = filePart1.getInputStream();
        }
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try 
        {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "insert into hotels(hotelnm, placenm, hreagion, hstar, haddress, hmobileno, hlandline, hinfo, img1, img2) value(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, hotelnm);
            pstmt.setString(2, placenm);
            pstmt.setString(3, hreagion);
            pstmt.setString(4, hstar);
            pstmt.setString(5, haddress);
            pstmt.setString(6, hmobileno);
            pstmt.setString(7, hlandline);
            pstmt.setString(8, hinfo);
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                pstmt.setBlob(9, inputStream);
            }
            if (inputStream2 != null) {
                // fetches input stream of the upload file for the blob column
                pstmt.setBlob(10, inputStream2);
            }

            // sends the statement to the database server
            int row = pstmt.executeUpdate();
            if (row > 0) {
                //message = "File uploaded and saved into database";
                //System.out.println("File uploaded and saved into database");
                response.sendRedirect("pages/Hotels.jsp");
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
