require "docking_station"

describe DockingStation do
  alias_method :docking_station, :subject 
  describe "when created" do
    it { is_expected.to respond_to(:release_bike) }
  end
  describe "when asked for a bike" do
    it "returns a bike when asked to release_bike" do
      expect(docking_station.release_bike).to be_an_instance_of(Bike)
    end

    it "expects the bike it returns to be working" do
      expect(docking_station.release_bike).to be_working
    end
  end
end  
