class Vedabase::CLI
  attr_accessor :books

  def ready
    @books = Vedabase::Scraper.scrape_title
    # binding.pry
    # get_books
   menu
   choice
  end


  def menu
    puts "Welcome to the Vedabase! An introduction into a few of Śrīla Prabhupāda's most popular books!"
    list_books
  end

    # @books = Vedabase::Scraper.scrape_title
    # binding.pry



    def choice
      input = nil
      until input == "exit"
        puts "Enter the number of the book you would like to know more about:"
        input = gets.strip
        case input.downcase
        when "1"
          puts Vedabase::Scraper.scrape_bg
        when "2"
          puts Vedabase::Scraper.scrape_sb
        when "3"
          puts Vedabase::Scraper.scrape_cc
        when "exit"
          thank_you
        else try_again
        end
      end
    end

    def list_books
      @list = Vedabase::Vedabase.new(@books)
      binding.pry
      # puts @books
        @books.each.with_index(1) do | book, i |
          puts "#{i}. #{book}"
          break if i == 3
        # binding.pry
     end
    end
    # binding.pry

    def try_again
      puts "Invalid input!"
      puts "Please try again by inputting a number from 1 - 3 or type 'exit' to leave."
    end

    def thank_you
      puts "Thank you for your interest! For more information visit: https://krishnashopping.com/collections/books"
    end


end
