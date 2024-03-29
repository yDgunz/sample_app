require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "My App" }

  describe "Home page" do
	before { visit root_path }
	subject { page }
	
	it { should have_selector('h1', text: 'My App') }
	it { should have_selector('title', text: full_title('')) }
	it { should_not have_selector('title', text: '| Home') }
	
  end

  describe "Contact page" do
	before { visit contact_path }
	subject { page }
	
	it { should have_selector('h1', text: 'Contact') }
	it { should have_selector('title', text: full_title('Contact')) }

  end
  
   describe "Help page" do
	before { visit help_path }
	subject { page }
	
	it { should have_selector('h1', text: 'Help') }
	it { should have_selector('title', text: full_title('Help')) }
  
  end

   describe "About page" do
	before { visit about_path }
	subject { page }
	
	it { should have_selector('h1', text: 'About') }
	it { should have_selector('title', text: full_title('About')) }
	
  end
  
end