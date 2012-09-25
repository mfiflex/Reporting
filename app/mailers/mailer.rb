class Mailer < ActionMailer::Base
  default from: "snehal.fulzele@mfiflex.com"
  
  def contact(recipient, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = recipient
      @from = 'support@mfiflex.com'
      @sent_on = sent_at
      @body["title"] = 'This is title'
      @body["email"] = 'snehal.fulzele@mfiflex.com'
      @body["message"] = message
      @headers = {}
   end
   
   def mailTo(recipient,message)
    puts "Message is - "
    puts message
    mail(:to => recipient,:subject => "Something went wrong.",:message => message)
  end
   
end
