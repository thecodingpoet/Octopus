require 'rails_helper'

feature 'home page' do
  scenario 'heading', js: true do
    visit('/')
    expect(page).to have_content('Social Media Lists')
  end
end

feature 'search posts', js: true do
  let(:content) { 'Die with memories, not dreams' }
  let!(:governor_list) { create(:list, name: 'Governor', category: 'CustomList') }
  let!(:federal_legislator) { create(:list, name: 'Federal Legislator', category: 'NonCustomList') }
  let!(:governor_post) { create(:governor_post, social_media: 'Facebook', content: content) }

  scenario 'shows posts created by Governor' do
    visit('/')
    find('#type').find(:xpath, 'option[2]').select_option
    click_button 'Search'
    expect(page).to have_content(content)
  end
  
  scenario 'does not show post created by Governor' do
    visit('/')
    find('#type').find(:xpath, 'option[3]').select_option
    click_button 'Search'
    expect(page).not_to have_content(content)
  end

  scenario 'shows posts created from facebook' do  
    visit('/')
    find('#type').find(:xpath, 'option[2]').select_option
    click_button 'Search'
    expect(page).to have_content(content)
  end

  scenario 'does not show posts created from facebook' do 
    visit('/')
    find('#type').find(:xpath, 'option[3]').select_option
    click_button 'Search'
    expect(page).not_to have_content(content)
  end

  scenario 'does not show posts if not within date range' do
    visit('/') 
    fill_in "date_from", with: "20/01/2012"
    fill_in "date_to", with: "20/01/2013"
    click_button 'Search'
    expect(page).not_to have_content(content)
  end
end