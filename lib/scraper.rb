# require_relative './vedabase.rb'


class Vedabase::Scraper

  @@url_arrays = ["https://vedabase.io/en/library/bg/introduction/",
    "https://vedabase.io/en/library/sb/1/introduction/",
    "https://vedabase.io/en/library/cc/adi/introduction/"
  ]

  def self.scrape_title

    doc = Nokogiri::HTML(open("https://vedabase.io/en/library/"))

      books = doc.css("div.col-6.col-sm-3.col-md-2.col-lg-2.text-center.book-item").slice(0, 3)

        books.map.with_index do | book, i |
         title = book.css("a.book-title").text.strip
         url = @@url_arrays[i]
         Vedabase::Vedabase.new(title, url)
        end

  end


  def self.scrape_intro(url)

    doc = Nokogiri::HTML(open(url))

      intro = doc.css("div#content.row").text.strip


  end


end
