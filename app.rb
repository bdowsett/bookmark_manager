require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'index'
  end

  post '/update_bookmarks' do 
   Bookmark.create(bookmark: params[:bookmark])
   redirect '/bookmarks'
  end 

  run! if app_file == $0
end
