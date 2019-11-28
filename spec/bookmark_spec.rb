require 'list'
require 'pg'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.amazon.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.asos.com');")


      bookmarks = Bookmark.all
      
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.amazon.co.uk")
      expect(bookmarks).to include("http://www.asos.com")
    end
  end
end
