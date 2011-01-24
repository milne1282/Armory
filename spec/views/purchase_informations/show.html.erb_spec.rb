require 'spec_helper'

describe "/purchase_informations/show.html.erb" do
  include PurchaseInformationsHelper
  before(:each) do
    assigns[:purchase_information] = @purchase_information = stub_model(PurchaseInformation,
      :date_of_purchase => ,
      :price => 9.99,
      :vendor => "value for vendor"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(//)
    response.should have_text(/9\.99/)
    response.should have_text(/value\ for\ vendor/)
  end
end
