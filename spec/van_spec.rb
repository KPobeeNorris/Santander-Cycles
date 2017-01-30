require 'van'

describe Van do

  it {is_expected.to respond_to :remove_bike}

  it {is_expected.to respond_to :collect_bike}

  it_behaves_like BikeContainer

end
