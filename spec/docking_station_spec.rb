require 'docking_station'

describe DockingStation do
let(:bike) { double :bike }

  it { is_expected.to respond_to(:release_bike) }

    describe '#release_bike' do
    it 'releases a bike' do
      allow(bike).to receive(:working).and_return(true)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike #<---- FAILS
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'docking stations will not release broken bikes' do

      bike.report 
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
      
  end

  describe '#dock' do
    it 'returns instance of Bike class' do
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises an error when full' do
      subject.capacity.times { subject.dock bike} #<---
      expect { subject.dock bike }.to raise_error 'Docking station full'
    end

    it 'can report a bike as broken when i return it' do
      expect(subject.dock(bike.report)) #<---- FAILS
    end

    it '#bike returns docked bike' do
        subject.dock(bike)
        expect(subject.bikes).to eq [bike]
        #expect(subject).to respond_to(:bike)
    end
  end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
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
