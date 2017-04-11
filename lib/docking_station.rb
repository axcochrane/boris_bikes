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
  #  bike.working?
  #  bike 
  end

  def dock_bike(bike)
  	@bike_count += 1
  end
end
