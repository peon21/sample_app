require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    #response.should have_selector('title', :key => "Home");
    assert_select "title", :key => "Home"

     #response.should have_selector('title', :content => 'Ruby on Rails Tutorial Sample App | Home') 
     # assert_select "title", "#{@base_title} | Home"
  end	  

  it "should have a Contact page at '/contact'" do
     get '/contact'
     #response.should have_selector('title', :key => "Contact" )
     assert_select "title",  :key =>"Contact"
  end 	  

  it "should have a About page at '/about'" do
     get '/about'
     #response.should have_selector('title', :key => "About")
      assert_select "title",  :key =>"About"
  end

  it "should have a Help page at '/help'" do
     get '/help'
     #response.should have_selector('title', :key => "Help")
      assert_select "title",  :key =>"Help"
  end

end
