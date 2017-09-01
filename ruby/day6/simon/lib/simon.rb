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
    add_random_color
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    p seq
  end

  def require_sequence

  end

  def add_random_color
    colors = %w(red blue yellow green)
    seq << colors[rand(4)]
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game

  end
end
