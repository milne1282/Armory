require 'spec_helper'

describe FirearmsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/firearms" }.should route_to(:controller => "firearms", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/firearms/new" }.should route_to(:controller => "firearms", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/firearms/1" }.should route_to(:controller => "firearms", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/firearms/1/edit" }.should route_to(:controller => "firearms", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/firearms" }.should route_to(:controller => "firearms", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/firearms/1" }.should route_to(:controller => "firearms", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/firearms/1" }.should route_to(:controller => "firearms", :action => "destroy", :id => "1") 
    end
  end
end
