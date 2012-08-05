require 'spec_helper'

describe Trust do
  it "should return all host status by default" do
    tp = Trust.new()
    tp.should_not be_nil
    #return_data =
    #return_data.should_not be_nil
  end
end
