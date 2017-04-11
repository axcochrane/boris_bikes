#require 'bike'

class DockingStation
	attr_accessor :docked_bike

	def initialize
		@bikes = []
	end

  def release_bike
    bike = Bike.new
  #  bike.working?
  #  bike 
  end

  def dock_bike(bike)
  	@docked_bike = bike
  end

=begin
  def bikes
  	@bikes
  end

  def bikes
		@bike_count
	end

	def set_bike_count (new_count)
		@bike_count = new_count
	end
=end

end
