require 'spec_helper'

describe "/product_informations/new.html.erb" do
  include ProductInformationsHelper

  before(:each) do
    assigns[:product_information] = stub_model(ProductInformation,
      :new_record? => true,
      :brand => "value for brand",
      :model => "value for model",
      :serial_number => "value for serial_number"
    )
  end

  it "renders new product_information form" do
    render

    response.should have_tag("form[action=?][method=post]", product_informations_path) do
      with_tag("input#product_information_brand[name=?]", "product_information[brand]")
      with_tag("input#product_information_model[name=?]", "product_information[model]")
      with_tag("input#product_information_serial_number[name=?]", "product_information[serial_number]")
    end
  end
end
