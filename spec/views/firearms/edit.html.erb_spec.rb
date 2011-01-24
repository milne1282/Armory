require 'spec_helper'

describe "/firearms/edit.html.erb" do
  include FirearmsHelper

  before(:each) do
    assigns[:firearm] = @firearm = stub_model(Firearm,
      :new_record? => false,
      :caliber => "value for caliber",
      :times_fired => 1,
      :last_clean_date => 
    )
  end

  it "renders the edit firearm form" do
    render

    response.should have_tag("form[action=#{firearm_path(@firearm)}][method=post]") do
      with_tag('input#firearm_caliber[name=?]', "firearm[caliber]")
      with_tag('input#firearm_times_fired[name=?]', "firearm[times_fired]")
      with_tag('input#firearm_last_clean_date[name=?]', "firearm[last_clean_date]")
    end
  end
end
