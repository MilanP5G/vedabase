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
          puts "Introduction to Bhagavad-Gītā"
        when "2"
          puts "Introduction to Śrīmad-Bhāgavatam"
        when "3"
          puts "Introduction to Śrī Caitanya-Caritāmṛta"
        when "exit"
          thank_you
        else try_again
        end
      end
    end

    def list_books
      Vedabase::Vedabase.all
    end

    def try_again
      puts "Invalid input! Please try again by inputting a number from 1 - 3."
    end

    def thank_you
      puts "Thank you for your interest! For more information visit: https://krishnashopping.com/collections/books"
    end


end
