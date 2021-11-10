require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'should return a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.askjeeves.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end
end
