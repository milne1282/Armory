require 'spec_helper'

describe "/weapons/new.html.erb" do
  include WeaponsHelper

  before(:each) do
    assigns[:weapon] = stub_model(Weapon,
      :new_record? => true
    )
  end

  it "renders new weapon form" do
    render

    response.should have_tag("form[action=?][method=post]", weapons_path) do
    end
  end
end
