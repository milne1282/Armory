require 'spec_helper'

describe Firearm do
  before(:each) do
    @valid_attributes = {
      :caliber => "value for caliber",
      :times_fired => 1,
      :last_clean_date => 
    }
  end

  it "should create a new instance given valid attributes" do
    Firearm.create!(@valid_attributes)
  end
end
