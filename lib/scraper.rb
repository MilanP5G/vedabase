# require_relative './vedabase.rb'
class Vedabase::Scraper


  def self.scrape_title

    doc = Nokogiri::HTML(open("https://vedabase.io/en/library/"))

      books = doc.css("div.col-6.col-sm-3.col-md-2.col-lg-2.text-center.book-item")

        books.map do | book |
         title = book.css("a.book-title").text.strip
        end

  end
 # binding.pry


  def self.scrape_bg

    doc = Nokogiri::HTML(open("https://vedabase.io/en/library/bg/introduction/"))

      intro = doc.css("div.rich-text").text

  end
  # binding.pry

  def self.scrape_sb

    doc = Nokogiri::HTML(open("https://vedabase.io/en/library/sb/1/introduction/"))

      intro = doc.css("div.rich-text").text

  end

  def self.scrape_cc

    doc = Nokogiri::HTML(open("https://vedabase.io/en/library/cc/adi/introduction/"))

      intro = doc.css("div.rich-text").text

  end


end
