# require_relative './ship.rb'

class Board

  attr_reader :size

  def initialize(size)
    @size = size
  end

  def in_bounds?(ship)
    ship.cells.each do |coordinates|
      coordinates.each do |i|
        if i > (size - 1)
          return false
        end
      end
    end

      true
  end



end
