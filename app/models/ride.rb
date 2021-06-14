class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings

  validates :from, :spot, :start_time, :end_time, :date, presence: true

  def format_hour(time)
    return "#{time.hour}:#{(time.min < 10) ? "0#{time.min}" : time.min}"
  end
end
