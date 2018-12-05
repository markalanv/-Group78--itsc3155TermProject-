require 'rails_helper.rb'

feature"Blogger adds a comment" do
    scenario "Blogger successfully adds a comment" do
       visit articles_path
       click_link "View Posts"
       click_button "Add Comment"
    end
end
