class Hotel
  def initialize(row)
    @name = row["Hotel"]
    @city = row["City"]
    @phone = row["Phone Number"]
    @singles = row["Number of Singles"]
    @doubles = row["Number of Doubles"]
  end
  attr_reader :name, :phone, :city
end
