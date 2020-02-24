class Vedabase::CLI


  def ready
   titles
   menu
   choice
  end

  def titles
    titles = Vedabase::Scraper.scrape_title
  end

  def intro(input)
    selected_vedabase = Vedabase::Vedabase.all[input-1]
    selected_vedabase.introduction = Vedabase::Scraper.scrape_intro(selected_vedabase.url)
    selected_vedabase.introduction
  end


  def menu
    puts "Welcome to the Vedabase! An introduction into a few of Śrīla Prabhupāda's most popular books!".cyan
    list_titles
    puts "Enter the number of the book you would like to know more about or type 'exit' to leave:".cyan
  end

  def list_titles
    Vedabase::Vedabase.all.each.with_index(1) do | vedabase, i |
        puts "#{i}. #{vedabase.title}"
    end
  end


    def choice
      input = nil
      until input == "exit"
        option = "Type in 'menu' to return to the main menu or 'exit' to leave:".cyan
        input = gets.strip
        case input.downcase
        when "1", "2", "3"
          puts intro(input.to_i)
          puts option
        when "menu"
          menu
        when "exit"
          thank_you
        else
          try_again
        end
      end
    end


    def try_again
      puts "Invalid input!".red
      puts "Type in 'menu' to return to the main menu or 'exit' to leave:".cyan
    end

    def thank_you
      puts "Thank you for your interest! For more information visit: https://krishnashopping.com/collections/books".cyan
    end


end
