require_relative "./vedabase/version"
require 'open-uri'
require 'nokogiri'
require 'readability'
require 'pry'
require 'colorize'
require_relative './cli'
require_relative './vedabase'
require_relative './scraper'


module Vedabase
  class Error < StandardError; end
  # Your code goes here...
end
