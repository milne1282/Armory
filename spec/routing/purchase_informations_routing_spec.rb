require 'spec_helper'

describe PurchaseInformationsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/purchase_informations" }.should route_to(:controller => "purchase_informations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/purchase_informations/new" }.should route_to(:controller => "purchase_informations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/purchase_informations/1" }.should route_to(:controller => "purchase_informations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/purchase_informations/1/edit" }.should route_to(:controller => "purchase_informations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/purchase_informations" }.should route_to(:controller => "purchase_informations", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/purchase_informations/1" }.should route_to(:controller => "purchase_informations", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/purchase_informations/1" }.should route_to(:controller => "purchase_informations", :action => "destroy", :id => "1") 
    end
  end
end
