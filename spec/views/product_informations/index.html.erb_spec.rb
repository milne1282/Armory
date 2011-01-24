require 'spec_helper'

describe "/product_informations/index.html.erb" do
  include ProductInformationsHelper

  before(:each) do
    assigns[:product_informations] = [
      stub_model(ProductInformation,
        :brand => "value for brand",
        :model => "value for model",
        :serial_number => "value for serial_number"
      ),
      stub_model(ProductInformation,
        :brand => "value for brand",
        :model => "value for model",
        :serial_number => "value for serial_number"
      )
    ]
  end

  it "renders a list of product_informations" do
    render
    response.should have_tag("tr>td", "value for brand".to_s, 2)
    response.should have_tag("tr>td", "value for model".to_s, 2)
    response.should have_tag("tr>td", "value for serial_number".to_s, 2)
  end
end
