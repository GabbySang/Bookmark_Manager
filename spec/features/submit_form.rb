feature 'Add a bookmark using the form' do
  scenario 'User adds a website to the list' do
    visit ('/new')
    fill_in('url', with: 'http://testbookmark.com')
      click_link ('Added')

      expect(page).to have_content 'http://testbookmark.com'
    end
  end
