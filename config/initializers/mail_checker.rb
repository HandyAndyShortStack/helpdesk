class MailChecker

  require 'net/pop'

  @@pop_server = 'pop.gmail.com'
  @@pop_port = 995
  @@username = "codefellowsgold@gmail.com"
  @@password = "star9821"

  def self.check_mail
    Net::POP3.enable_ssl(OpenSSL::SSL::VERIFY_NONE)
    Net::POP3.start(@@pop_server, @@pop_port, @@username, @@password) do |pop|
      if pop.mails.empty?
        puts "No Mail Found"
      else
        pop.mails.each do |email|
          MailReader.receive(email.pop)
        end
      end
    end
  end

end

class MailReader < ActionMailer::Base
  def receive(email)
    puts "Subject ==>" + email.subject
    puts "Body ==> " + email.body.to_s
  end
end
