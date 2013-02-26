require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'show'" do
  
    before(:each) do
       @user = FactoryGirl.create(:user)
    end	  
	  
    it "should be succeessfull" do
      get :show, :id => @user 
      response.should be_success
    end
    it "should find teh right user" do
      get :show, :id => @user
      assigns(:user).should == @user 
    end

  end

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end

    it "should have the right title" do
      get :new
      #response.should have_selector('title', :content => "Sign up")
      assert_select "title",  :content =>"Contact"
    end 
   
  end

end
