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
message.setTo("danilokelvemeireles@yahoo.com.br");
message.setSubject(email.subject());
message.setText(email.body()+"\n\nEnviado por: "+email.from() + "\n Nome: "+email.nome());
sender.send(message);
}
}
