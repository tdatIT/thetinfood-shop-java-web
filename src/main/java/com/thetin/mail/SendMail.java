package com.thetin.mail;

import com.thetin.variable.HtmlTemplate;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendMail {
    static final String ACCOUNT = "testcode.datit@outlook.com";
    static final String PASSWORD = "19001019_9Xi";
    static final String SUBJECT = "Cảm ơn phản hồi.";


    public static void sendMailToEmail(String email,String name) {
        String fromEmail = ACCOUNT;
        System.out.println("Start send mail");
        try {
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.office365.com");
            props.put("mail.smtp.post", "587");
            props.put("mail.smtp.auth", true);
            props.put("mail.smtp.starttls.enable", true);
            props.put("mail.smtp.ssl.protocols", "TLSv1.2");
            Authenticator auth = new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(ACCOUNT, PASSWORD);
                }
            };
            Session session = Session.getInstance(props, auth);
            MimeMessage msg = new MimeMessage(session);
            //set data for mail
            msg.setFrom(new InternetAddress(fromEmail, "DatIT TC"));
            msg.setReplyTo(InternetAddress.parse(fromEmail, false));
            msg.setSubject(SUBJECT, "UTF-8");

            String htmlContent = HtmlTemplate.htmlMail(name);
            msg.setContent(htmlContent,"text/html; charset=UTF-8");
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email, false));
            Transport.send(msg);
            System.out.println("Send mail complete");


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
