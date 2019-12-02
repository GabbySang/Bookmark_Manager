feature 'Add a bookmark using the form' do
  scenario 'User adds a website to the list' do
    visit ('/new')
    fill_in('url', with: 'http://testbookmark.com')
    fill_in('title', with: 'Test Bookmark')

      click_link ('Added')

      expect(page).to have_content ('Test Bookmark', href: 'http://www.testbookmark.com')
    end
  end
