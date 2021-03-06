class AlertMailer < ActionMailer::Base
  default from: "codefellowsgold@gmail.com"
  
  def alert_email(ticket)
    @ticket = ticket
    mail(to: "codefellowsgold@gmail.com", subject: "New Helpdesk Ticket: " + ticket.title)
  end
end
