class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings

  geocoded_by :spot
  after_validation :geocode, if: :will_save_change_to_spot?

  validates :from, :spot, :start_time, :end_time, :date, presence: true


  include PgSearch::Model
  pg_search_scope :search_by_sport,
    associated_against: {
      sport: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  def format_hour(time)
    return "#{time.hour}:#{(time.min < 10) ? "0#{time.min}" : time.min}"
  end
end
