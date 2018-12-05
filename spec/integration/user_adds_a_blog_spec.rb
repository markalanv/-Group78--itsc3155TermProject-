require 'rails_helper.rb'

feature"Blogger adds new post" do
    scenario "Blogger successfully adds new blog post" do
       visit articles_path
       click_link "New Blog"
       fill_in "Title", with: "New Blog Post"
       fill_in "Text", with: "This is a new blog post"
       click_button "Create Article"
       expect(page).to have_content("New Blog Post")
       expect(page).to have_content("This is a new blog post")
    end
end

