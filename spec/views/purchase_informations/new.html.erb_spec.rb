require 'spec_helper'

describe "/purchase_informations/new.html.erb" do
  include PurchaseInformationsHelper

  before(:each) do
    assigns[:purchase_information] = stub_model(PurchaseInformation,
      :new_record? => true,
      :date_of_purchase => ,
      :price => 9.99,
      :vendor => "value for vendor"
    )
  end

  it "renders new purchase_information form" do
    render

    response.should have_tag("form[action=?][method=post]", purchase_informations_path) do
      with_tag("input#purchase_information_date_of_purchase[name=?]", "purchase_information[date_of_purchase]")
      with_tag("input#purchase_information_price[name=?]", "purchase_information[price]")
      with_tag("input#purchase_information_vendor[name=?]", "purchase_information[vendor]")
    end
  end
end
