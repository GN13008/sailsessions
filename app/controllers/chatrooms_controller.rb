class ChatroomsController < ApplicationController
  def index
    @myrides = current_user.rides
    @mybookings = current_user.bookings
    current_user.notif = false
  end
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
