require_relative './bike.rb'

class DockingStation
	DEFAULT_CAPACITY = 20
	attr_accessor :bikes
	attr_reader :capacity

	def initialize #(alt_capacity)
	 	@bikes = []
		@capacity = DEFAULT_CAPACITY
    #self.DEFAULT_CAPACITY = alt_capacity
	end

  def release_bike
		fail 'No bikes available' if empty?
		if @bikes.last.working == true
			@bikes.pop
		else
			fail 'No bikes available'
		end
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
    @bikes.count >= @capacity
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
