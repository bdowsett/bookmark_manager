feature 'testing webpage' do
    scenario 'Homepage should render output' do
      visit('/')
      expect(page).to have_content 'Bookmark'
    end
  end