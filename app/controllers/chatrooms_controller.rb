class ChatroomsController < ApplicationController
  def index
    @myrides = current_user.rides
    @mybookings = current_user.bookings
  end
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
