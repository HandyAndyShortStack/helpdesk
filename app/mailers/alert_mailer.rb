class AlertMailer < ActionMailer::Base
  default from: "helpdesk@example.com"
  
  def alert_email(ticket)
    mail(to: "andynshort@gmail.com", subject: "New Helpdesk Tick")
  end
end
