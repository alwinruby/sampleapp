require 'rails_helper.rb'

feature 'Creating Updates' do
  scenario 'can create job' do
    #visit root route
    visit '/'
    #click create update link
    click_link 'Create Update'
    #fill in the form with needed information
    fill_in 'Title', with: 'title'
    fill_in 'Caption', with: 'caption'
    #cick the submit button
    click_button 'Create Update'
    #expect the page to have the content we submitted
    expect(page).to have_content('title')
    expect(page).to have_content('caption')
  end
end
