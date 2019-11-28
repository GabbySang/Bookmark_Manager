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

  get '/bookmarklist/new' do
    erb :new
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
  redirect '/bookmarklist'
  end

  run! if app_file == $0

end
