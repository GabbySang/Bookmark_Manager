require 'pg'

feature 'User can visit the home page' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Welcome to Bookmark Manager"
    within(:css, '#buttons') do
          click_link 'Enter'
        end

  end

feature "User can access list of bookmarks" do
  scenario 'User views bookmark list' do
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    Bookmark.create(url: 'http://www.amazon.co.uk', title: 'Amazon')
    Bookmark.create(url: 'http://www.asos.com', title: 'Asos')

    visit('/bookmarklist')

    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('Amazon', href: 'http://www.amazon.co.uk')
    expect(page).to have_link('Asos', href: 'http://www.asos.com')
  end
end
end
