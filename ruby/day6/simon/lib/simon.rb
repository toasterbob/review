class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = []
    @sequence_length = 1
  end

  def play
    while !game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    # p seq
    # sleep 1
    # system ("clear")
    system("clear")
    seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
    p "Please enter sequence:"
    sequence = gets.chomp.split(" ")
    sequence.each_with_index do |color, i|
      check = seq[i]
      if color != check[0]
        @game_over = true
      end
    end
  end

  def add_random_color
    colors = %w(red blue yellow green)
    seq << colors[rand(4)]
    # seq << COLORS.shuffle[0]
  end

  def round_success_message
    sleep 1
    p "Good work! Here's the next sequence."
  end

  def game_over_message
    p "You lose"
    p seq
  end

  def reset_game
    initialize
    sleep 5
    p "Let's play again"
    play
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
