class SessionsController < ApplicationController
  def index
  end

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new 
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to @session
    else
      render :new
    end 
  end

  def accept

  end 

  def decline

  end 

  private

  def session_params
    params.require(:session).permit(:from, :spot, :start_date, :end_date, :title, :description, :nb_of_place, :sport, :exchange_item)
  end

  
end
