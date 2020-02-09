require_relative './vedabase.rb'

class Vedabase::Scraper

def self.scrape_book
  doc = Nokogiri::HTML(open("https://vedabase.io/en/"))

    books = doc.css("div.mm-0")

    books.each do | book |
      title = book.css("h1").text.strip
      introduction = book.css("div.col-12").text
    end

  end

end
