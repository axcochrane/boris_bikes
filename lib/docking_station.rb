require "bike"

class DockingStation
  def release_bike
    bike = Bike.new
    bike.working?
    bike
  end
end
