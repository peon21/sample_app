require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    #response.should have_selector('title', :key => "Home");
    assert_select "title", :key => "Home"
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

  it "should have a signup page at '/signup'" do
    get '/signup'
    assert_select "title",  :key => "Sign up"   
  end

  it "should have the right links on the layout" do
    visit root_path
    page.should have_css('title', :content => "Home" )
    click_link "About"
    page.should have_css('title', :content => "About" )
    click_link "Contact"
    page.should have_css('title', :content => "Contact" )
    click_link "Home"
    page.should have_css('title', :content => "Home" )
    click_link "Sign up now!"
    page.should have_css('title', :content => "Sign up" )
    page.should have_css('a[href="/" ]>img')
  end
end
