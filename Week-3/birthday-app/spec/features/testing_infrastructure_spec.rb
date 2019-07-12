require 'capybara/rspec'
require '/Users/student/Projects/portfolio/Week-3/birthday-app/app.rb'

# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit ('/')
#     expect(page).to have_content 'Testing infrastructure works'
#   end
# end

feature 'Submit button' do
  scenario 'testing the submit button directs a user to /calculator' do
    visit ('/')
    fill_in :user_name, with: "Charlie"
    click_button 'Submit'
    expect(page).to have_content "Charlie"
  end
end

# feature 'Calculator' do
#   scenario 'Returns string wishing a user happy birthday' do
#     Timecop.freeze(Time.parse("28th November")) do
#       visit ('/')
#       fill_in :user_name, with: "Charlie"
#       select("November", :from => 'month_start')
#       # fill_in :month_start, with: "November"
#       fill_in :day_start, with: "28"
#       click_button 'Submit'
#       expect(page).to have_content "Happy Birthday, Charlie! Have a great day"
#     end
#   end
# end
