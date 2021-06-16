class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :ride

  def participants
    users = ride.bookings.map do |b|
      b.user
    end
    users << ride.user
    return users
  end
end
