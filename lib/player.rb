class Player

  attr_accessor :turn

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


end