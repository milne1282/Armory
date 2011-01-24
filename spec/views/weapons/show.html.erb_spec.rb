require 'spec_helper'

describe "/weapons/show.html.erb" do
  include WeaponsHelper
  before(:each) do
    assigns[:weapon] = @weapon = stub_model(Weapon)
  end

  it "renders attributes in <p>" do
    render
  end
end
