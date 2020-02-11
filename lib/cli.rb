class Vedabase::CLI

  def ready
   menu
   choice
  end

  def menu
    puts "Welcome to the Vedabase! An introduction into a few of Śrīla Prabhupāda's most popular books!"
    list_books
  end

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
      @books = Vedabase::Scraper.scrape_title
      @books.each.with_index do |book, i|
        puts "#{i}. #{book}"
     end
    end

    def try_again
      puts "Invalid input!"
      puts "Please try again by inputting a number from 1 - 3 or type 'exit' to leave."
    end

    def thank_you
      puts "Thank you for your interest! For more information visit: https://krishnashopping.com/collections/books"
    end


end
