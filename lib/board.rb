class Board

  attr_reader :size

  def initialize(size, ships)
    @size = size
    @ships = ships
  end

  def result?(*ships)
    ships.each do |i|
      return false if !(i.sunk?)
    end

    true
  end

  def place(ship, coordinates, orientation)
    ship.place(coordinates, orientation)

    fail 'Ship is out-of-bounds.' unless in_bounds?(ship)

    @ships.each do |i|
      fail 'Ship overlaps an existing ship.' if overlapped?(i, ship)
    end

    @ships << ship

    return true
  end

  def fire(coordinates)

  end

  private

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

end

