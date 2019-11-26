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
    visit('/bookmarklist')
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.amazon.co.uk"
    expect(page).to have_content "www.asos.com"
  end
end
end
