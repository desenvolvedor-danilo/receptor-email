package dkmo.receptoremail;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {
private final JavaMailSender sender;
public EmailService(JavaMailSender sender){
    this.sender=sender;
}
public void sendEmail(Email email){
var message = new SimpleMailMessage();
message.setFrom("danilokelvemeireles45@gmail.com");
message.setTo("danilokelvemeireles45@gmail.com");
message.setSubject(email.subject());
message.setText(email.body());
sender.send(message);
}
}
