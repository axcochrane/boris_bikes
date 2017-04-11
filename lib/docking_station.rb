require "./lib/bike.rb"

class DockingStation
	def initialize
		@bike_count = 10
	end

	def bike_count
		@bike_count
	end

	def set_bike_count (new_count)
		@bike_count = new_count
	end

  def release_bike
    bike = Bike.new
    bike.working?
    bike # -- not certain i fully understand why this bike is necessary, i know it fails the tests without it though
  end

  def receive_bike(bike)
  	@bike_count += 1
  end
end
