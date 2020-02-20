class Vedabase::Vedabase
  attr_accessor :title, :introduction

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

end
