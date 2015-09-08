class Board

  attr_reader :size

  def initialize(size, ships)
    @size = size
    @ships = ships
  end

  def in_bounds?(ship)
    ship.cells.each do |coordinates|
      coordinates.each do |i|
        return false if i > (size - 1)
      end
    end

      true
  end

  def overlapped?(ship1, ship2)
    !( (ship1.cells & ship2.cells).empty? )
  end

  def result?(*ships)
    ships.each do |i|
      return false if !(i.sunk?)
    end

    true
  end

  def fire(coordinates)

  end

end
