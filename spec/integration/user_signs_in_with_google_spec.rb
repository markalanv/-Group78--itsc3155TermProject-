require 'rails_helper.rb'

feature "User logs in with Google" do
    scenario 'Blogger navigates to Google sign in' do
        visit articles_path
        click_link "Sign in with Google"
        expect(page).to have_content("Sign in")
    end
end