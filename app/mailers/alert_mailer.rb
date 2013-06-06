class AlertMailer < ActionMailer::Base
  default from: "helpdesk@example.com"
  
  def alert_email(ticket)
    @ticket = ticket
    mail(to: "andynshort@gmail.com", subject: "New Helpdesk Ticket" + ticket.title)
  end
end
