require 'spec_helper'

describe "/purchase_informations/edit.html.erb" do
  include PurchaseInformationsHelper

  before(:each) do
    assigns[:purchase_information] = @purchase_information = stub_model(PurchaseInformation,
      :new_record? => false,
      :date_of_purchase => ,
      :price => 9.99,
      :vendor => "value for vendor"
    )
  end

  it "renders the edit purchase_information form" do
    render

    response.should have_tag("form[action=#{purchase_information_path(@purchase_information)}][method=post]") do
      with_tag('input#purchase_information_date_of_purchase[name=?]', "purchase_information[date_of_purchase]")
      with_tag('input#purchase_information_price[name=?]', "purchase_information[price]")
      with_tag('input#purchase_information_vendor[name=?]', "purchase_information[vendor]")
    end
  end
end
