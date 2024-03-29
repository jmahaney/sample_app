require 'spec_helper'

describe "StaticPages" do

let(:title_text) {"Ruby on Rails Tutorial Sample App |"}
  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Sample App")
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{title_text} Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{title_text} Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "#{title_text} About Us")
    end
  end

  describe "Contact Page" do

    it "should have the h1 'Contacts'" do
      visit '/static_pages/contacts'
      page.should have_selector('h1', :text => "Contacts")
    end

    it "should have the title 'Contacts'" do
      visit '/static_pages/contacts'
      page.should have_selector('title',
                  :text => "Ruby on Rails Tutorial Sample App | Contacts")
    end
  end
end
