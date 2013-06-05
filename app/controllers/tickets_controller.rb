class TicketsController < ApplicationController

  def new
    if !user_signed_in?
      flash[:alert] = "You need to be signed in to create a ticket."
      redirect_to :root
    else
      @ticket = Ticket.new
    end
  end

  def create
    @ticket = Ticket.create(params[:ticket])
    if @ticket.save
      flash[:notice] = "ticket created successfully"
    else
      flash[:warning] = "there was a problem creating the ticket"
    end
    redirect_to :root
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

end
