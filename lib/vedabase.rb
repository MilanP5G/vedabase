class Vedabase::Vedabase
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    Vedabase::Scraper.scrape_title
    @@all
  end

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
