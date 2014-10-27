class Deck
  def initialize
    @numbers = ["A","2","3","4","5","6","7","8","9","10","J","K","Q","K"]
    @suits = ["S","H","C","D"]
    @cards = []
  end

  def generate_cards
    @suits.each do |suit|
      @numbers.each do |number|
        @cards << suit + number
      end
    end
  end

  def shuffle_cards
    @cards.shuffle!
  end

  def print_cards
    puts @cards
  end
end

deck = Deck.new
deck.generate_cards
deck.shuffle_cards
deck.print_cards
