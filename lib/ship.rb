require_relative './board.rb'

class Ship

  attr_reader :length

  def initialize(length)
    @length = length
    @shots = []
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
    fail 'Cannot fire on ship that has not been placed' unless @cells

    @shots << coordinates
    @cells.include?(coordinates)
  end

  def sunk?
    @cells.each do |i|
      if !@shots.include?(i)
        return false
      end
    end

    true
  end


end
