require 'spec_helper'

describe PurchaseInformationsController do

  def mock_purchase_information(stubs={})
    @mock_purchase_information ||= mock_model(PurchaseInformation, stubs)
  end

  describe "GET index" do
    it "assigns all purchase_informations as @purchase_informations" do
      PurchaseInformation.stub(:find).with(:all).and_return([mock_purchase_information])
      get :index
      assigns[:purchase_informations].should == [mock_purchase_information]
    end
  end

  describe "GET show" do
    it "assigns the requested purchase_information as @purchase_information" do
      PurchaseInformation.stub(:find).with("37").and_return(mock_purchase_information)
      get :show, :id => "37"
      assigns[:purchase_information].should equal(mock_purchase_information)
    end
  end

  describe "GET new" do
    it "assigns a new purchase_information as @purchase_information" do
      PurchaseInformation.stub(:new).and_return(mock_purchase_information)
      get :new
      assigns[:purchase_information].should equal(mock_purchase_information)
    end
  end

  describe "GET edit" do
    it "assigns the requested purchase_information as @purchase_information" do
      PurchaseInformation.stub(:find).with("37").and_return(mock_purchase_information)
      get :edit, :id => "37"
      assigns[:purchase_information].should equal(mock_purchase_information)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created purchase_information as @purchase_information" do
        PurchaseInformation.stub(:new).with({'these' => 'params'}).and_return(mock_purchase_information(:save => true))
        post :create, :purchase_information => {:these => 'params'}
        assigns[:purchase_information].should equal(mock_purchase_information)
      end

      it "redirects to the created purchase_information" do
        PurchaseInformation.stub(:new).and_return(mock_purchase_information(:save => true))
        post :create, :purchase_information => {}
        response.should redirect_to(purchase_information_url(mock_purchase_information))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved purchase_information as @purchase_information" do
        PurchaseInformation.stub(:new).with({'these' => 'params'}).and_return(mock_purchase_information(:save => false))
        post :create, :purchase_information => {:these => 'params'}
        assigns[:purchase_information].should equal(mock_purchase_information)
      end

      it "re-renders the 'new' template" do
        PurchaseInformation.stub(:new).and_return(mock_purchase_information(:save => false))
        post :create, :purchase_information => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested purchase_information" do
        PurchaseInformation.should_receive(:find).with("37").and_return(mock_purchase_information)
        mock_purchase_information.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :purchase_information => {:these => 'params'}
      end

      it "assigns the requested purchase_information as @purchase_information" do
        PurchaseInformation.stub(:find).and_return(mock_purchase_information(:update_attributes => true))
        put :update, :id => "1"
        assigns[:purchase_information].should equal(mock_purchase_information)
      end

      it "redirects to the purchase_information" do
        PurchaseInformation.stub(:find).and_return(mock_purchase_information(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(purchase_information_url(mock_purchase_information))
      end
    end

    describe "with invalid params" do
      it "updates the requested purchase_information" do
        PurchaseInformation.should_receive(:find).with("37").and_return(mock_purchase_information)
        mock_purchase_information.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :purchase_information => {:these => 'params'}
      end

      it "assigns the purchase_information as @purchase_information" do
        PurchaseInformation.stub(:find).and_return(mock_purchase_information(:update_attributes => false))
        put :update, :id => "1"
        assigns[:purchase_information].should equal(mock_purchase_information)
      end

      it "re-renders the 'edit' template" do
        PurchaseInformation.stub(:find).and_return(mock_purchase_information(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested purchase_information" do
      PurchaseInformation.should_receive(:find).with("37").and_return(mock_purchase_information)
      mock_purchase_information.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the purchase_informations list" do
      PurchaseInformation.stub(:find).and_return(mock_purchase_information(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(purchase_informations_url)
    end
  end

end
