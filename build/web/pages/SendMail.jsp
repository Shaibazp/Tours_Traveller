<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%!
    public static void send(String to, String subject, String msg) 
    {
        String host = "smtp.gmail.com";//smtp.gmail.com
        final String user = "projectemailservices@gmail.com";//change accordingly  projectemailservices@gmail.com
        final String password = "qnfwjfabmljqriss";//change accordingly  --zvsmcqpdqmpecjbw

//1st step) Get the session object
        Properties props = new Properties();
props.put("mail.smtp.host",host);  
        props.put("mail.smtp.auth", "true"); 
        props.put("mail.debug", "false");
        props.put("mail.smtp.port", "465");
        props.setProperty("mail.smtp.protocol", "smtps");
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.ssl.enable", "true");  


        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
//2nd step)compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setText(msg);

            //3rd step)send message
            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }
%>