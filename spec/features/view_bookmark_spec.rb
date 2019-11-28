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
connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.amazon.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.asos.com');")


    visit('/bookmarklist')
    
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.amazon.co.uk"
    expect(page).to have_content "http://www.asos.com"
  end
end
end
