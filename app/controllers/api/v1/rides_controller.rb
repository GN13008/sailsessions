class Api::V1::RidesController < Api::V1::BaseController
  def show
    @ride = Ride.find(params[:id])
    authorize @ride
    # # for mapbox
    # @booking = Booking.new()
    # @markers =
    #   [{
    #     lat: @ride.latitude,
    #     lng: @ride.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { ride: @ride }),
    #     image_url: helpers.asset_url('logo-sail-sessions.png')
    #   }]
  end
end