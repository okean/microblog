require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end
  
  describe "Home page" do
    
    before { visit root_path }
    let(:heading) { 'Microblog' }
    let(:page_title) { '' }
    
    it_should_behave_like "all static pages"
    it { should_not have_selector('title', text: '| Home')  }
  end
  
  describe "Help page" do
    
    before { visit help_path }
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }
    
    it_should_behave_like "all static pages"
  end
  
  describe "About page" do
    
    before { visit about_path }
    let(:heading) { 'About' }
    let(:page_title) { 'About' }
    
    it_should_behave_like "all static pages"
  end
  
  it "should have the right linkson the layout" do
    visit root_path
    click_link "About"
    page.should have_selector('title', text: full_title('About'))
    click_link "Help"
    page.should have_selector('title', text: full_title('Help'))
    click_link "Home"
    page.should have_selector('title', text: full_title(''))
    click_link "Sign up now!"
    page.should have_selector('title', text: full_title('Sign up'))
    click_link "Microblog"
    page.should have_selector('title', text: full_title(''))
  end
end