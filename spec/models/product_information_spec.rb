require 'spec_helper'

describe ProductInformation do
  before(:each) do
    @valid_attributes = {
      :brand => "value for brand",
      :model => "value for model",
      :serial_number => "value for serial_number"
    }
  end

  it "should create a new instance given valid attributes" do
    ProductInformation.create!(@valid_attributes)
  end
end
