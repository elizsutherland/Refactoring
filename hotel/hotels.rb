require "csv"

class Hotel

  def initialize(file_name)
    @file_name = file_name
  end

  def run
    CSV.foreach(@file_name, {headers: true}) do |row|

      puts row["Hotel"]
    end
  end
end

hotel = Hotel.new("hotels.csv")
hotel.run
