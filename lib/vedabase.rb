class Vedabase::Vedabase
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end



  # def title
  #   Vedabase::Scraper.scrape_title.each do | title |
  #     @@all << title
  #   end
  # end




  # def self.books
  #   @@all << Vedabase::Scraper.scrape_title
  # end

  # def self.get_book_by_title(title)
  #   self.all.detect { | book | book.title == title }
  # end


  # def self.bg_introduction
  #   Vedabase::Scraper.scrape_bg
  # end
  #
  # def self.sb_introduction
  #   Vedabase::Scraper.scrape_sb
  # end
  #
  # def self.cc_introduction
  #   Vedabase::Scraper.scrape_cc
  # end

end
