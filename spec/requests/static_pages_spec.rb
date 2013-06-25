require 'spec_helper'
describe "Static pages" do

let (:base) {"Ruby on Rails"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
	end 

	it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => base)
	end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => ' | Home')
	end
	
  end

   describe "Help page" do

    	it "should have the content 'Help'" do
      		visit '/static_pages/help'
      		page.should have_content('Help')
		end 

		it "should have the help title" do
  			visit '/static_pages/help'
  			page.should have_selector('title', 
  				:text => base+' | Help')
		end

 	end

   describe "About page" do
   		it "should have the content 'About Us'" do
   			visit '/static_pages/about'
   			page.should have_content('About Us')
   		end

   		it "should have the about us title" do
  			visit '/static_pages/about'
  			page.should have_selector('title', 
  				:text => base+' | About Us')
		end
   	end

   	describe "Contact page" do
   		it "should have content 'Contact'" do
   			visit '/static_pages/contact'
   			page.should have_content('Contact')
   		end

   		it "should have the contact title" do
  			visit '/static_pages/contact'
  			page.should have_selector('title', 
  				:text => base+' | Contact')
		end
   	end
end
