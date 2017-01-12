require 'bike'

describe Bike do

  it {is_expected.to respond_to :working?}

  it 'is expected that the bike is working' do
    bike = Bike.new
    expect(bike).to be_working
  end

end
