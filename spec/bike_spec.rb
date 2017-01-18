require 'bike'

describe Bike do

  it {is_expected.to respond_to :broken?}

  it {is_expected.to respond_to :report_broken}

  it 'is expected that the bike is working when new' do
    bike = Bike.new
    expect(bike).not_to be_broken
  end

  it "can be reported as broken" do
    subject.report_broken
    expect(subject).to be_broken
  end

end
