require 'pg'

feature 'adding bookmarks' do
  scenario 'a user can add bookmarks' do
    visit('/bookmarks')
    fill_in :bookmark, with: 'http://www.someurl.com'
    click_button 'Add Bookmark'
    expect(page).to have_content 'http://www.someurl.com'
  end 
end 