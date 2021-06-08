class Booking < ApplicationRecord
  belongs_to :session
  belongs_to :user

  validates :status, inclusion: {in: ["accept", "decline", "demand", "passed", "canceled"]}
end
