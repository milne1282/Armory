require 'spec_helper'

describe ProductInformationsController do

  def mock_product_information(stubs={})
    @mock_product_information ||= mock_model(ProductInformation, stubs)
  end

  describe "GET index" do
    it "assigns all product_informations as @product_informations" do
      ProductInformation.stub(:find).with(:all).and_return([mock_product_information])
      get :index
      assigns[:product_informations].should == [mock_product_information]
    end
  end

  describe "GET show" do
    it "assigns the requested product_information as @product_information" do
      ProductInformation.stub(:find).with("37").and_return(mock_product_information)
      get :show, :id => "37"
      assigns[:product_information].should equal(mock_product_information)
    end
  end

  describe "GET new" do
    it "assigns a new product_information as @product_information" do
      ProductInformation.stub(:new).and_return(mock_product_information)
      get :new
      assigns[:product_information].should equal(mock_product_information)
    end
  end

  describe "GET edit" do
    it "assigns the requested product_information as @product_information" do
      ProductInformation.stub(:find).with("37").and_return(mock_product_information)
      get :edit, :id => "37"
      assigns[:product_information].should equal(mock_product_information)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created product_information as @product_information" do
        ProductInformation.stub(:new).with({'these' => 'params'}).and_return(mock_product_information(:save => true))
        post :create, :product_information => {:these => 'params'}
        assigns[:product_information].should equal(mock_product_information)
      end

      it "redirects to the created product_information" do
        ProductInformation.stub(:new).and_return(mock_product_information(:save => true))
        post :create, :product_information => {}
        response.should redirect_to(product_information_url(mock_product_information))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved product_information as @product_information" do
        ProductInformation.stub(:new).with({'these' => 'params'}).and_return(mock_product_information(:save => false))
        post :create, :product_information => {:these => 'params'}
        assigns[:product_information].should equal(mock_product_information)
      end

      it "re-renders the 'new' template" do
        ProductInformation.stub(:new).and_return(mock_product_information(:save => false))
        post :create, :product_information => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested product_information" do
        ProductInformation.should_receive(:find).with("37").and_return(mock_product_information)
        mock_product_information.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :product_information => {:these => 'params'}
      end

      it "assigns the requested product_information as @product_information" do
        ProductInformation.stub(:find).and_return(mock_product_information(:update_attributes => true))
        put :update, :id => "1"
        assigns[:product_information].should equal(mock_product_information)
      end

      it "redirects to the product_information" do
        ProductInformation.stub(:find).and_return(mock_product_information(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(product_information_url(mock_product_information))
      end
    end

    describe "with invalid params" do
      it "updates the requested product_information" do
        ProductInformation.should_receive(:find).with("37").and_return(mock_product_information)
        mock_product_information.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :product_information => {:these => 'params'}
      end

      it "assigns the product_information as @product_information" do
        ProductInformation.stub(:find).and_return(mock_product_information(:update_attributes => false))
        put :update, :id => "1"
        assigns[:product_information].should equal(mock_product_information)
      end

      it "re-renders the 'edit' template" do
        ProductInformation.stub(:find).and_return(mock_product_information(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested product_information" do
      ProductInformation.should_receive(:find).with("37").and_return(mock_product_information)
      mock_product_information.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the product_informations list" do
      ProductInformation.stub(:find).and_return(mock_product_information(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(product_informations_url)
    end
  end

end
