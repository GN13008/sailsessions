class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings

  validates :from, presence: true
  validates :spot, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
