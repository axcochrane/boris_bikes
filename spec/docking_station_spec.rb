require 'docking_station'


describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }



    describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
    end
  end

  describe DockingStation do
    it '(:dock) return instance of Bike class' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end
  end

  describe DockingStation do
    it '#bike returns docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
      #expect(subject).to respond_to(:bike)
    end
  end
end


# alias_method :docking_station, :subject
#

=begin

#alias_method :docking_station, :subject

  describe "when created" do
    it { is_expected.to respond_to(:release_bike) }
  end

    describe "when asked for a bike" do
    it "returns a bike" do
      expect(docking_station.release_bike).to be_an_instance_of(Bike)
    end

    describe "when bike is released"
    it "expects the bike it releases to be working" do
     expect(docking_station.release_bike).to be_working
    end

    # it { is_expected.to docking_station.release_bike be_working }

    # describe "when bike is docked"
    # it "expects docking station to receive a bike" do
    #  expect(docking_station.receive_bike(@bike)).to be_truthy
    # end

    it { is_expected.to respond_to(:dock).with(1).argument }

    describe "when user checks for presence of bike" do
      xit "checks docking station for instance of Bike class"
    end

    end
  end

=end
