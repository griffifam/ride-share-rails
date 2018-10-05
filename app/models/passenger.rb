class Passenger < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_many :drivers, through: :trips

  validates :name, presence: true
  validates :phone_num, presence: true

  def total_cost
    total = 0
    self.trips.each do |trip|
      total += (trip.cost/100.to_f)
    end
    return total
  end

  def list_trips
    trips = []
    self.trips.each do |trip|
      if trip.passenger_id == self.id
        trips << trip
      end
    end
    return trips
  end
end
