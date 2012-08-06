require 'spec_helper'

describe "SFDCUtil::Trust" do
  it "should return all host status by default" do
    tp = SFDCUtil::Trust.new()
    tp.should_not be_nil
    return_data = tp.get_all_status()
    return_data.length.should >= 1

    #return_data =
    #return_data.should_not be_nil
  end

  it "should return a single host status" do
    tp = SFDCUtil::Trust.new()
    tp.should_not be_nil
    return_data = tp.get_status("NA1")
    return_data.length.should == 1
    return_data[0][:instance].should == "NA1"
  end
end
