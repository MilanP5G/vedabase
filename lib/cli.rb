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
      puts "Enter the number of the book you would like to know more about:"
    end


end
