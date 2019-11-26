require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Welcome to Bookmark Manager'
  end

  get '/bookmarklist' do
    bookmarklist =
    [
    "www.google.com",
    "www.amazon.co.uk",
    "www.asos.com"
    ]


bookmarklist.join
end

  run! if app_file == $0
end
