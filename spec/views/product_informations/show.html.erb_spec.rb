require 'spec_helper'

describe "/product_informations/show.html.erb" do
  include ProductInformationsHelper
  before(:each) do
    assigns[:product_information] = @product_information = stub_model(ProductInformation,
      :brand => "value for brand",
      :model => "value for model",
      :serial_number => "value for serial_number"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ brand/)
    response.should have_text(/value\ for\ model/)
    response.should have_text(/value\ for\ serial_number/)
  end
end
