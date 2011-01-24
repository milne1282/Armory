require 'spec_helper'

describe WeaponsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/weapons" }.should route_to(:controller => "weapons", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/weapons/new" }.should route_to(:controller => "weapons", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/weapons/1" }.should route_to(:controller => "weapons", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/weapons/1/edit" }.should route_to(:controller => "weapons", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/weapons" }.should route_to(:controller => "weapons", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/weapons/1" }.should route_to(:controller => "weapons", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/weapons/1" }.should route_to(:controller => "weapons", :action => "destroy", :id => "1") 
    end
  end
end
