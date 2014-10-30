require "csv"
require "./hotel.rb"

class HotelSearcher

  def initialize(file_name)
    @file_name = file_name
    @hotels = {}
    populate_database
  end

  def run
    hotel_name = ask_which_hotel
    hotel = get_hotel(hotel_name)
    describe(hotel)
  end
 
  private
 
  def describe(hotel)
    puts
    puts "Phone number: #{hotel.phone}"
    puts "Location: #{hotel.city}"
  end

  def populate_database
    CSV.foreach(@file_name, {headers: true}) do |row|
      hotel=Hotel.new(row)
      @hotels[hotel.name]=hotel
    end
  end

  def ask_which_hotel
    puts "What hotel do you want to know about?"
    gets.chomp
  end

  def get_hotel(hotel_name)
    @hotels[hotel_name]
  end
end

hotel_searcher = HotelSearcher.new("hotels.csv")
hotel_searcher.run
