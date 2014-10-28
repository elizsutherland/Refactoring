class Game
  @hand = ["rock","paper","scissors"]

  def ask_player_which_move
    prints "Your move! Choose #{@hand} Q to quit"
    player_answer = gets.chomp
    @hands.find { |hand| hand.name == player_answer }
  end

  def list_out_move
    @hands.each do |hand|
      puts hand.name
    end
  end

end

game =Game.new
game.ask_player_which_move
game.list_out_move
