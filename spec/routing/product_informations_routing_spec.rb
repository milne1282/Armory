require 'spec_helper'

describe ProductInformationsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/product_informations" }.should route_to(:controller => "product_informations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/product_informations/new" }.should route_to(:controller => "product_informations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/product_informations/1" }.should route_to(:controller => "product_informations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/product_informations/1/edit" }.should route_to(:controller => "product_informations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/product_informations" }.should route_to(:controller => "product_informations", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/product_informations/1" }.should route_to(:controller => "product_informations", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/product_informations/1" }.should route_to(:controller => "product_informations", :action => "destroy", :id => "1") 
    end
  end
end
