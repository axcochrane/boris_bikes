require'bike'

describe Bike do
  it { is_expected.to respond_to(:working?) }
end
 
# describe Bike do
#  	it { is_expected.to respond_to(:docked) }
# end
