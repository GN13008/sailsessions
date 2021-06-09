class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :components ]

  def home
    @sports = Sport.all
    @rides = Ride.all.last(2)
  end

  def components
  end
end
