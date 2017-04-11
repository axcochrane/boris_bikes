require "./lib/bike.rb"

class DockingStation
	def initialize
		@has_bike = true
	end

	def has_bike?
		@has_bike
	end

	def set_bike_status (new_status)
		@has_bike = new_status
	end

  def release_bike
    bike = Bike.new
    bike.working?
    bike # -- not certain i fully understand why this bike is necessary, i know it fails the tests without it though
  end

  def receive_bike(bike)
  end
end
