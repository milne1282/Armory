require 'spec_helper'

describe FirearmsController do

  def mock_firearm(stubs={})
    @mock_firearm ||= mock_model(Firearm, stubs)
  end

  describe "GET index" do
    it "assigns all firearms as @firearms" do
      Firearm.stub(:find).with(:all).and_return([mock_firearm])
      get :index
      assigns[:firearms].should == [mock_firearm]
    end
  end

  describe "GET show" do
    it "assigns the requested firearm as @firearm" do
      Firearm.stub(:find).with("37").and_return(mock_firearm)
      get :show, :id => "37"
      assigns[:firearm].should equal(mock_firearm)
    end
  end

  describe "GET new" do
    it "assigns a new firearm as @firearm" do
      Firearm.stub(:new).and_return(mock_firearm)
      get :new
      assigns[:firearm].should equal(mock_firearm)
    end
  end

  describe "GET edit" do
    it "assigns the requested firearm as @firearm" do
      Firearm.stub(:find).with("37").and_return(mock_firearm)
      get :edit, :id => "37"
      assigns[:firearm].should equal(mock_firearm)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created firearm as @firearm" do
        Firearm.stub(:new).with({'these' => 'params'}).and_return(mock_firearm(:save => true))
        post :create, :firearm => {:these => 'params'}
        assigns[:firearm].should equal(mock_firearm)
      end

      it "redirects to the created firearm" do
        Firearm.stub(:new).and_return(mock_firearm(:save => true))
        post :create, :firearm => {}
        response.should redirect_to(firearm_url(mock_firearm))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved firearm as @firearm" do
        Firearm.stub(:new).with({'these' => 'params'}).and_return(mock_firearm(:save => false))
        post :create, :firearm => {:these => 'params'}
        assigns[:firearm].should equal(mock_firearm)
      end

      it "re-renders the 'new' template" do
        Firearm.stub(:new).and_return(mock_firearm(:save => false))
        post :create, :firearm => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested firearm" do
        Firearm.should_receive(:find).with("37").and_return(mock_firearm)
        mock_firearm.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :firearm => {:these => 'params'}
      end

      it "assigns the requested firearm as @firearm" do
        Firearm.stub(:find).and_return(mock_firearm(:update_attributes => true))
        put :update, :id => "1"
        assigns[:firearm].should equal(mock_firearm)
      end

      it "redirects to the firearm" do
        Firearm.stub(:find).and_return(mock_firearm(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(firearm_url(mock_firearm))
      end
    end

    describe "with invalid params" do
      it "updates the requested firearm" do
        Firearm.should_receive(:find).with("37").and_return(mock_firearm)
        mock_firearm.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :firearm => {:these => 'params'}
      end

      it "assigns the firearm as @firearm" do
        Firearm.stub(:find).and_return(mock_firearm(:update_attributes => false))
        put :update, :id => "1"
        assigns[:firearm].should equal(mock_firearm)
      end

      it "re-renders the 'edit' template" do
        Firearm.stub(:find).and_return(mock_firearm(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested firearm" do
      Firearm.should_receive(:find).with("37").and_return(mock_firearm)
      mock_firearm.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the firearms list" do
      Firearm.stub(:find).and_return(mock_firearm(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(firearms_url)
    end
  end

end
