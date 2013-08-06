require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App2'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App2')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App2 | Home')
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App2 | Help')
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App2 | About Us')
    end
  end
end
RSpec.configure do |config|



	config.include Capybara::DSL
end