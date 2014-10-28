class Round
  hand = ["rock", "paper", "sciccors"]

  def intialize
    @player = player
    @ai = ai
    @round =[]
  end

  def pick_rps
    @player.game_rules.1
    @ai.game_rules.1
    @round << player + ai
  end

  def show_hand
    puts @round
  end

  private

    @game_rules {
      'rock/paper' => 'paper'
      'rock/scissors' => 'rock'
      'rock/rock' => 'null'
      'paper/rock' => 'paper'
      'paper/scissors' => 'scissors'
      'paper/paper' => 'null'
      'scissors/rock' => 'rock'
      'scissors/paper' => 'scissors'
      'scissors/scissors' => 'null'
    }

  end
end

round = Round.new
round.pick_rps
# round.show_hand
