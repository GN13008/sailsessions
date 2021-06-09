class RidesController < ApplicationController
  def index
  end

  def search
    @rides = Ride.all
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def new
    @ride = Ride.new 
  end

  def create
    @ride = Ride.new(ride_params)
    if @ride.save
      redirect_to @ride
    else
      render :new
    end 
  end

  def accept

  end 

  def decline

  end 

  private

  def ride_params
    params.require(:ride).permit(:from, :spot, :start_date, :end_date, :title, :description, :nb_of_place, :sport, :exchange_item)
  end

  
end
