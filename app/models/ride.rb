class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings


  validates :from, :spot, :start_date, :end_date, :date, presence: true


  include PgSearch::Model
  pg_search_scope :search_by_sport,
    associated_against: {
      sport: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
