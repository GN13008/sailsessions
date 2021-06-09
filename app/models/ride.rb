class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings

  validates :from, :spot, :start_date, :end_date, :date, presence: true
end
