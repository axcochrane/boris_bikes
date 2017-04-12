require_relative './bike.rb'

class DockingStation
	attr_accessor :bikes

	def initialize
	 	@bikes = []
	end

  def release_bike
		fail 'No bikes available' if empty?
		@bikes.pop
  end

  def dock(bike)
  	fail 'Docking station full' if full?
  	@bikes << bike
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= 20
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
