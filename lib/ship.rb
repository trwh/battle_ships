require_relative './board.rb'

class Ship

  attr_reader :length

  def initialize(length)
    @length = length
  end

  def place(origin, orientation)
    @cells = []

    length.times do |i|

      case orientation
      when 'N'
        @cells << [ origin[0], (origin[1] + i) ]
      when 'E'
        @cells << [ (origin[0] + i), origin[1] ]
      when 'S'
        @cells << [ origin[0], (origin[1] - i) ]
      when 'W'
        @cells << [ (origin[0] - i), origin[1] ]
      end

    end

  @cells
  end

  def fire(coordinates)

  end



end
