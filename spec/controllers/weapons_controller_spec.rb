require 'spec_helper'

describe WeaponsController do

  def mock_weapon(stubs={})
    @mock_weapon ||= mock_model(Weapon, stubs)
  end

  describe "GET index" do
    it "assigns all weapons as @weapons" do
      Weapon.stub(:find).with(:all).and_return([mock_weapon])
      get :index
      assigns[:weapons].should == [mock_weapon]
    end
  end

  describe "GET show" do
    it "assigns the requested weapon as @weapon" do
      Weapon.stub(:find).with("37").and_return(mock_weapon)
      get :show, :id => "37"
      assigns[:weapon].should equal(mock_weapon)
    end
  end

  describe "GET new" do
    it "assigns a new weapon as @weapon" do
      Weapon.stub(:new).and_return(mock_weapon)
      get :new
      assigns[:weapon].should equal(mock_weapon)
    end
  end

  describe "GET edit" do
    it "assigns the requested weapon as @weapon" do
      Weapon.stub(:find).with("37").and_return(mock_weapon)
      get :edit, :id => "37"
      assigns[:weapon].should equal(mock_weapon)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created weapon as @weapon" do
        Weapon.stub(:new).with({'these' => 'params'}).and_return(mock_weapon(:save => true))
        post :create, :weapon => {:these => 'params'}
        assigns[:weapon].should equal(mock_weapon)
      end

      it "redirects to the created weapon" do
        Weapon.stub(:new).and_return(mock_weapon(:save => true))
        post :create, :weapon => {}
        response.should redirect_to(weapon_url(mock_weapon))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved weapon as @weapon" do
        Weapon.stub(:new).with({'these' => 'params'}).and_return(mock_weapon(:save => false))
        post :create, :weapon => {:these => 'params'}
        assigns[:weapon].should equal(mock_weapon)
      end

      it "re-renders the 'new' template" do
        Weapon.stub(:new).and_return(mock_weapon(:save => false))
        post :create, :weapon => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested weapon" do
        Weapon.should_receive(:find).with("37").and_return(mock_weapon)
        mock_weapon.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :weapon => {:these => 'params'}
      end

      it "assigns the requested weapon as @weapon" do
        Weapon.stub(:find).and_return(mock_weapon(:update_attributes => true))
        put :update, :id => "1"
        assigns[:weapon].should equal(mock_weapon)
      end

      it "redirects to the weapon" do
        Weapon.stub(:find).and_return(mock_weapon(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(weapon_url(mock_weapon))
      end
    end

    describe "with invalid params" do
      it "updates the requested weapon" do
        Weapon.should_receive(:find).with("37").and_return(mock_weapon)
        mock_weapon.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :weapon => {:these => 'params'}
      end

      it "assigns the weapon as @weapon" do
        Weapon.stub(:find).and_return(mock_weapon(:update_attributes => false))
        put :update, :id => "1"
        assigns[:weapon].should equal(mock_weapon)
      end

      it "re-renders the 'edit' template" do
        Weapon.stub(:find).and_return(mock_weapon(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested weapon" do
      Weapon.should_receive(:find).with("37").and_return(mock_weapon)
      mock_weapon.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the weapons list" do
      Weapon.stub(:find).and_return(mock_weapon(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(weapons_url)
    end
  end

end
