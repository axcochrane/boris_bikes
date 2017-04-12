#require 'bike'

class DockingStation
	attr_accessor :bike

	# def initialize
	# 	@bikes = []
	# end

  def release_bike
		fail 'No bikes available' unless @bike
		@bike
  #  bike.working?
  #  bike
  end

  def dock(bike)
  	@bike = bike
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
