class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings

  validates :from, presence: true
  validates :spot, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_sport,
    associated_against: {
      sport: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
