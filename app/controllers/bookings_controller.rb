class BookingsController < ApplicationController
  def index
    @booking = Booking.all
  end

  def create
    @booking = Booking.new()
    @ride = Ride.find(params[:ride_id])
    @booking.ride = @ride
    @booking.user = current_user

    if @booking.save
      redirect_to rides_path
    else
      render @ride
      # Flash alert to be made
    end

  # def update
  #   @reservation = Reservation.find(params[:id])
  #   @reservation.status = params[:status]
  #   if @reservation.save
  #     redirect_to dashboard_path
  #   else
  #     render "pages#dashboard"
  #   end
  end

  def accept
    @ride = ride.find(params[:ride_id])
    @booking = Booking.find(params[:id])
    @booking.update(status: "accept")

    if @booking.save
      redirect_to @booking.ride
    else
      render @ride
    end
  end

  def decline
    @ride = Ride.find(params[:ride_id])
    @booking = Booking.find(params[:id])
    @booking.update(status: "decline")

    if @booking.save
      redirect_to @booking.ride
    else
      render @ride
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
