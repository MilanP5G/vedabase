class Vedabase::Vedabase
  attr_accessor :title, :introduction

  @@all = []

  def initialize
    @title = title
    @introduction = introduction
    @@all << self
  end

  def self.all
    @@all
  end 

end
