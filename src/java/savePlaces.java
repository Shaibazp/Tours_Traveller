
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

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class savePlaces extends HttpServlet 
{

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/tours_traveller";
    private String dbUser = "root";
    private String dbPass = "root";
    
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException 
    {
        // gets values of text fields
        String placenm = request.getParameter("placenm");
        String duration = request.getParameter("duration");
        String season = request.getParameter("season");
        String reagion = request.getParameter("reagion");
        String info = request.getParameter("info");
        
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
            String sql = "insert into places(placenm, duration, season, reagion, info, img1, img2) value(?,?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, placenm);
            pstmt.setString(2, duration);
            pstmt.setString(3, season);
            pstmt.setString(4, reagion);
            pstmt.setString(5, info);
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                pstmt.setBlob(6, inputStream);
            }
            if (inputStream2 != null) {
                // fetches input stream of the upload file for the blob column
                pstmt.setBlob(7, inputStream2);
            }

            // sends the statement to the database server
            int row = pstmt.executeUpdate();
            if (row > 0) {
                //message = "File uploaded and saved into database";
                //System.out.println("File uploaded and saved into database");
                response.sendRedirect("pages/Places.jsp");
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
