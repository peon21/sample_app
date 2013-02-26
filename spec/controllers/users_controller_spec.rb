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

    it "should have the right title" do
      get :show, :id => @user
      assert_select "title",  :content => @user.name
    end
    
    it "should have the user's name" do
      get :show, :id => @user
      assert_select "h1", :content => @user.name
    end

    it "should have a profile image" do
      get :show, :id => @user
      assert_select "h1>img", :class => "gravatar"
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
