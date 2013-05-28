require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { 'Microblog' }
  
  describe "Home page" do
    
    it "should have the h1 'Microblog'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Microblog')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "#{base_title} | Home") 
    end
  end
  
  describe "Help page" do
    
    it "should have the content h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', text: 'Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', text: "#{base_title} | Help") 
    end
  end
  
  describe "About page" do
    
    it "should have the content h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', text: 'About')
    end
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "#{base_title} | About") 
    end
  end
end
