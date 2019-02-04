require 'rails_helper'

feature 'home page' do
  scenario 'heading', js: true do
    visit('/')
    expect(page).to have_content('Social Media Lists')
  end
end