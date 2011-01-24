require 'spec_helper'

describe "/purchase_informations/index.html.erb" do
  include PurchaseInformationsHelper

  before(:each) do
    assigns[:purchase_informations] = [
      stub_model(PurchaseInformation,
        :date_of_purchase => ,
        :price => 9.99,
        :vendor => "value for vendor"
      ),
      stub_model(PurchaseInformation,
        :date_of_purchase => ,
        :price => 9.99,
        :vendor => "value for vendor"
      )
    ]
  end

  it "renders a list of purchase_informations" do
    render
    response.should have_tag("tr>td", .to_s, 2)
    response.should have_tag("tr>td", 9.99.to_s, 2)
    response.should have_tag("tr>td", "value for vendor".to_s, 2)
  end
end
