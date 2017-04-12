require_relative './bike.rb'

class DockingStation
	DEFAULT_CAPACITY = 20
	attr_accessor :bikes

	def initialize #(alt_capacity)
	 	@bikes = []
    #self.DEFAULT_CAPACITY = alt_capacity
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
    @bikes.count >= DEFAULT_CAPACITY
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
