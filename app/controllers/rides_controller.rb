class RidesController < ApplicationController
  def index
    #les réservations que je fait
    @mybookings = current_user.bookings

    #les sessions que j'ai crées
    @myrides = current_user.rides
    @resa_en_att = 0
    @resa_acceptee = 0
    @myrides.each do |ride|
      @resa_en_att += ride.bookings.where(status: "en attente").count
      @resa_acceptee += ride.bookings.where(status: "acceptée").count
    end

    
  end

  def search
    @rides = Ride.all
    @sport = params[:sport]
    @description = "Choisis une session, accède aux meilleurs spots et profites un max !"
    @from = params[:from]
    @date = params[:date]
# 1 seul champ est renseigné
    if params[:sport].present?
      sport_id = Sport.where(name: params[:sport]).first.id
      @rides = @rides.where(sport_id: sport_id)
    end
    if params[:from].present?
      @rides = @rides.where(from: params[:from])
    end
    if params[:date].present?
      @rides = @rides.where(date: params[:date])
    end

  end

  def show
    @ride = Ride.find(params[:id])
    # for mapbox
    @booking = Booking.new()
    @markers =
      [{
        lat: @ride.latitude,
        lng: @ride.longitude
      }]
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    chatroom = Chatroom.new
    chatroom.name = @ride.title
    chatroom.ride = @ride
    flash.alert = "Problème de chatroom" unless chatroom.save
    if @ride.save
      redirect_to @ride, notice: "Votre session vient d'être créée"
    else
      flash.alert = "Merci de remplir les champs nécessaires à la création d'une session."
      render :new
    end
  end

  private

  def ride_params
    params.require(:ride).permit(:from, :spot, :start_time, :end_time, :title, :description, :nb_of_place, :sport, :exchange_item, :date, :sport_id)
  end

end
