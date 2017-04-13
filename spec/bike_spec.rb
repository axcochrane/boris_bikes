require'bike'

describe Bike do

  it { is_expected.to respond_to(:working) }

  it "reports a broken bike" do
    bike = Bike.new
    bike.report
    expect(bike.working).to eq(false)
  end
end

# describe Bike do
#  	it { is_expected.to respond_to(:docked) }
# end
