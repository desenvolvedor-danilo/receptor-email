package dkmo.receptoremail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class EmailController {
@Autowired
EmailService emailService;

@PostMapping(value = "send-email")
public  void sendEmail(@RequestBody Email email){
emailService.sendEmail(email);

}
}
