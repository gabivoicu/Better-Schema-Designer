require 'spec_helper'

describe "Demo Service" do
  it "should print out an info string" do
    stub_server = OpenStruct.new({ :type => "StubWebServer" })
    d = Demo.new(stub_server)
    d.info.should == "StubWebServer"
  end
end
