require 'spec_helper'

describe "StaticPages" do

	describe "home Page" do
		it "Should have the right content" do
			visit '/static_pages/home'
			page.should have_content('No Place Like')
		end
	end

	describe "About Page" do
		it "should say fart" do
			visit "/static_pages/about"
			page.should have_content('fart')
		end

		it "should have the right title" do
			visit "/static_pages/about"
			page.should have_selector('title', 
				:text => "Wookie Wookie Wookie | About Us")
		end
	end

end
