require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
  
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.askjeeves.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
  
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.askjeeves.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end
  describe '.create' do
    it 'creates a new bookmark' do 
      Bookmark.create(bookmark: 'http://www.example.org')
      expect(Bookmark.all).to include 'http://www.example.org'
    end 
  end 
end 
