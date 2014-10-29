require "csv"

class Hotel

  def initialize(file name)
  @file_name = file name
  end

  def run
    CSV.foreach(@file_name, {headers: true}) do |row|

    end
  end
end
