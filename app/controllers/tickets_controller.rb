class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new
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
