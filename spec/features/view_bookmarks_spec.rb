feature 'Viewing bookmarks' do
  scenario 'get a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content '[]'
  end
end
