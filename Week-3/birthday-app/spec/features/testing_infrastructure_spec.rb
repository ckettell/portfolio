require 'capybara/rspec'
require '/Users/student/Projects/portfolio/Week-3/birthday-app/app.rb'

feature 'Submit button' do
  scenario 'testing the submit button directs a user to /calculator' do
    visit ('/')
    fill_in :user_name, with: "Charlie"
    click_button 'Submit'
    expect(page).to have_content "Charlie"
  end
end
