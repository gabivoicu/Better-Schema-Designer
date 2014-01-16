require 'spec_helper'
require 'json'

describe "Demo Service" do
  it "should print out an info string" do
    stub_response =  "Successful test"
    stub_application = OpenStruct.new({ :response => stub_response })
    d = Demo.new(stub_application)
    d.info.should == %q,"Successful test",
  end
end
