require "csv"

class HotelSearcher

  def initialize(file_name)
    @file_name = file_name
    @hotels = []
    populate_database
  end

  def run
    hotel_name = ask_which_hotel
    puts hotel_information(hotel_name)
  end
 
  private
 
  def populate_database
    CSV.foreach(@file_name, {headers: true}) do |row|
      @hotels << row
    end
  end

  def ask_which_hotel
    puts "What hotel do you want to know about?"
    gets.chomp
  end

  def hotel_information(hotel_name)
    puts @hotels.find{|hotel| hotel["Hotel"] == hotel_name }
  end
end

hotel_searcher = HotelSearcher.new("hotels.csv")
hotel_searcher.run
