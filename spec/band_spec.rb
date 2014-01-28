require 'spec_helper'
MOST_IMPORTANT_POST_PUNK_BAND_EVER="Joy Division"

describe "Band, an Active Record-backed model" do
  it "should print out a name when instantiated with one" do
    proto_new_order = Band.new(name: "Joy Division")
    proto_new_order.name.should == MOST_IMPORTANT_POST_PUNK_BAND_EVER
  end
end
