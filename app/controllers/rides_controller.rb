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
    @sport = "tous sports confondus"
    @description = "Choisis une session, accède aux meilleurs spots et profites un max !"
    @from = params[:depart]
    @date = params[:date]
    if params[:sport].present? # && params[:when].present?
      @rides = Ride.search_by_sport(params[:sport])
      @sport = "de #{params[:sport]}"
    #   @offers = Offer.search_by_localisation(params[:where])
    #   @offers = @offers.search_by_disponibility(params[:when])
    # elsif params[:when].present?
    #   @offers = Offer.search_by_disponibility(params[:when])
    # elsif params[:where].present?
    #   @offers = Offer.search_by_localisation(params[:where])
    # else
    #   @offers = Offer.all
    # end
    # @markers = @offers.geocoded.map do |offer|
    # {
    #   lat: offer.latitude,
    #   lng: offer.longitude
    # }
    end
  end

  def show
    @ride = Ride.find(params[:id])
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
