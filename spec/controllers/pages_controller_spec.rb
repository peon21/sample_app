require 'spec_helper'


describe PagesController do
  render_views
 
  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      #response.should have_selector('title', :content => 'Ruby on Rails Tutorial Sample App | Home') 
      assert_select "title", "#{@base_title} | Home"
    end

    it "should have non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    
    end

  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      assert_select "title", "#{@base_title} | Contact"
    end
  end
  
   describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      assert_select "title", "#{@base_title} | About"
    end
 
  end
   
  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
      get 'help'
      assert_select "title", "#{@base_title} | Help"
    end
 
  end


end
