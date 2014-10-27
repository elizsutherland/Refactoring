require "/.deck"

class Card

 # def initialize(number_and_suit)
   # @number = number_and_suit[:number]
  #  @suits = number_and_suit[:suit]
 # end

  def play
    puts @cards "Hand is #{@cards} -  #{@suits}"
  end
end
