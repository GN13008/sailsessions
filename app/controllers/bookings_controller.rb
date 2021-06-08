class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def create
    @ride = Ride.find(params[:ride_id])
    @booking = Booking.new(booking_params)
    @booking.ride = @ride
    # liaison des deux
    # besoin de ID user + ID ride
    # devise current_user ?
    current_user.user_id
    if @booking.save
      redirect_to @booking
    else
      render @ride
    end
  end

  def accept
    @ride = ride.find(params[:ride_id])
    @booking = Booking.find(params[:id])
    @booking.update(status: "accept")

    if @booking.save
      redirect_to @booking.ride
    else
      render
    end
  end

  def decline
    @ride = Ride.find(params[:ride_id])
    @booking = Booking.find(params[:id])
    @booking.update(status: "decline")

    if @booking.save
      redirect_to @booking.ride
    else
      render
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
