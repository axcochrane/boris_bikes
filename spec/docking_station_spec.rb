require "docking_station"

describe DockingStation do
  describe "when created" do
    it { is_expected.to respond_to(:release_bike) }
  end
end  
