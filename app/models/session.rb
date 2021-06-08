class Session < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :from, presence: true
  validates :spot, presence: true
  validates :sport, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
