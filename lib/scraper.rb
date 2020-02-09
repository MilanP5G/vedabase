require_relative './vedabase.rb'

class Vedabase::Scraper


def get_page
  Nokogiri::HTML(open(https://vedabase.io/en/))
end

def get_books
  self.get_page.css("div.mm-0")
end

def make_books
  self.get_books.each do | book |
    books = Vedabase.new
    books.title = book.css("h1").text
    books.intro = book.css("div.col-12").text
  end
end

end
