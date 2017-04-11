require_relative '../lib/docking_station.rb'

describe DockingStation do
  alias_method :docking_station, :subject 
  describe "when created" do
    it { is_expected.to respond_to(:release_bike) }
  end
    
    describe "when asked for a bike" do
    it "returns a bike when asked to release_bike" do
      expect(docking_station.release_bike).to be_an_instance_of(Bike)
    end

    describe "when bike is released"
    it "expects the bike it releases to be working" do
      expect(docking_station.release_bike).to be_working
    end
    
    describe "when asked to dock bike"
      it "docks bike at the docking station" do
        expect(docking.station.dock_bike).to be_docked 
      end


    describe "when user checks for presence of bike"
      xit "checks docking station for instance of Bike class"

    
    end
  end
end  
