require 'spec_helper'

describe "/weapons/index.html.erb" do
  include WeaponsHelper

  before(:each) do
    assigns[:weapons] = [
      stub_model(Weapon),
      stub_model(Weapon)
    ]
  end

  it "renders a list of weapons" do
    render
  end
end
