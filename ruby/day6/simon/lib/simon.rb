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
    p seq
    sleep 1
    system ("clear")
  end

  def require_sequence
    p "Please enter sequence:"
    sequence = gets.chomp.split(" ")
    if sequence != seq
      @game_over = true
    end
  end

  def add_random_color
    colors = %w(red blue yellow green)
    seq << colors[rand(4)]
  end

  def round_success_message
    p "good work!"
  end

  def game_over_message
    p "game over"
  end

  def reset_game
    initialize
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
