class Vedabase::CLI

  def ready
   list_books
   choice
  end

  def list_books
    puts "Welcome to the Vedabase! An introduction into a few of Śrīla Prabhupāda's most popular books!"
    puts <<-DOC
      1. Bhagavad-Gītā
      2. Śrīmad-Bhāgavatam
      3. Śrī Caitanya-Caritāmṛta
      DOC
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
        end
      end
    end

    def thank_you
      puts "Thank you for your interest! For more information visit: https://krishnashopping.com/collections/books"
    end


end
