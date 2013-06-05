# helpdesk

This assignment explores sending and receiving mail through a rails app.

## Original Specifications:

Add email sending and receiving capability to a new app.

* Create a new app called Helpdesk
* Users can create a new ticket on a web page
* The helpdesk@example.com gets an email of the ticket's content
* helpdesk@example.com can reply via email, and the the reply gets displayed with the ticket in the web app.

## Refined Specifications:

* App name is "Helpdesk"
* Users are permitted to create at least one ticket on a web page
    * Implement Users
    * Implement permissions for users
    * Implement Tickets
        * Tickets follow Ticketee model - title:string description:text
    * Implement web page interface for Ticket creation
* helpdesk@example.com receives an email of the ticket's contents whenever a ticket is created
    * helpdesk@example.com can receive email
    * Helpdesk can send email
    * Helpdesk sends an email to helpdesk@example.com containing notable information about a ticket upon the creation of that ticket
    * Helpdesk receives this email on helpdesk@example.com's behalf
* Helpdesk will reply to ticket creation emails via email
* Contents of ticket creation reply emails will be displayed on a web page
