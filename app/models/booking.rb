class Booking < ApplicationRecord
  belongs_to :ride
  belongs_to :user

  validates :status, inclusion: {in: ["acceptée", "refusée", "en attente", "terminée", "annulée"]}
end
