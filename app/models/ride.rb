class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings
  has_one :chatroom

  geocoded_by :spot
  after_validation :geocode, if: :will_save_change_to_spot?

  validates :from, :spot, :start_time, :end_time, :date, presence: true

  def format_hour(time)
    return "#{time.hour}:#{(time.min < 10) ? "0#{time.min}" : time.min}"
  end

  def departure_date
    I18n.l(self.date, format:'%A %d %B')
  end 
end

