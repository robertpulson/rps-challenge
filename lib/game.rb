class Game

  attr_accessor :results, :player1, :player2

  def initialize
    @results = { :Rock     => [:Scissors, :Lizard],
                 :Paper    => [:Rock, :Spock],
                 :Scissors => [:Paper, :Lizard],
                 :Lizard   => [:Spock, :Paper],
                 :Spock    => [:Scissors, :Rock] }
  end

  def generate_choice_for(player)
    player.choose(results.keys.sample)
  end

  def play
    return 'Its a Tie' if player1.choice == player2.choice
    return 'Player 1 Wins' if loses_to(player1.choice).include? player2.choice
    return 'Player 2 Wins'
  end

  def loses_to(choice)
    self.results[choice]
  end

  def add(new_player)
    player1 ? @player2 = new_player : @player1 = new_player
  end

end