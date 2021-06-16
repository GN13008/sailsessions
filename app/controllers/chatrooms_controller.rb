class ChatroomsController < ApplicationController
  def index
    @myrides = current_user.rides
    @mybookings = current_user.bookings
    @count = @mybookings.where(status: "acceptée").count + @mybookings.where(status: "en attente").count
  end
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
