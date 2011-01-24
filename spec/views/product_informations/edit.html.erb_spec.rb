require 'spec_helper'

describe "/product_informations/edit.html.erb" do
  include ProductInformationsHelper

  before(:each) do
    assigns[:product_information] = @product_information = stub_model(ProductInformation,
      :new_record? => false,
      :brand => "value for brand",
      :model => "value for model",
      :serial_number => "value for serial_number"
    )
  end

  it "renders the edit product_information form" do
    render

    response.should have_tag("form[action=#{product_information_path(@product_information)}][method=post]") do
      with_tag('input#product_information_brand[name=?]', "product_information[brand]")
      with_tag('input#product_information_model[name=?]', "product_information[model]")
      with_tag('input#product_information_serial_number[name=?]', "product_information[serial_number]")
    end
  end
end
