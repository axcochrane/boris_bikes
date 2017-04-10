require 'bike'

describe Bike do
  alias_method :bike, :subject
  it { is_expected.to respond_to(:working?) }
  it "works" do
    expect(bike).to be_working
  end
end
