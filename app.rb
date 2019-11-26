require 'sinatra/base'
require_relative './lib/list'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Welcome to Bookmark Manager'
    erb :index
  end

  get '/bookmarklist' do
    @bookmarks = Bookmark.all
    erb :list


end

  run! if app_file == $0
end
