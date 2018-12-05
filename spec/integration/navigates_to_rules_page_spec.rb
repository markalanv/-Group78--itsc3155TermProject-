require 'rails_helper.rb'

feature "User views Rules page" do
    scenario "Blogger successfully navigates to Rules page" do
       visit articles_path
       click_link "Rules Page"
       expect(page).to have_content("Rules Page")
   end
end