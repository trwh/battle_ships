class Player

  attr_accessor :turn
  attr_reader :hits, :misses

  def initialize(player_no)
    @player_no = player_no
    if @player_no == 1
      @turn = true
    else
      @turn = false
    end

    @hits   = []
    @misses = []
  end

  def fire(board, coordinates)
    if board.fire(coordinates)
      @hits << coordinates
    else
      @misses << coordinates
    end
  end

end