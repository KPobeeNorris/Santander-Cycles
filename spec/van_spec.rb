require 'van'

describe Van do

  it {is_expected.to respond_to :remove_bike}

  it {is_expected.to respond_to :collect_bike}

  it "has a capacity to hold 20 bikes" do
    expect(subject.capacity).to eq 20
  end


end
