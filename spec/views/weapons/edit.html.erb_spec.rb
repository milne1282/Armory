require 'spec_helper'

describe "/weapons/edit.html.erb" do
  include WeaponsHelper

  before(:each) do
    assigns[:weapon] = @weapon = stub_model(Weapon,
      :new_record? => false
    )
  end

  it "renders the edit weapon form" do
    render

    response.should have_tag("form[action=#{weapon_path(@weapon)}][method=post]") do
    end
  end
end
