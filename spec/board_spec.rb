require_relative '../lib/board.rb'

describe Board do

  let (:board10){ Board.new(10) }

  it 'board takes a single argument' do
    expect(Board).to respond_to(:new).with(1).argument
  end

  it 'board makes board object of correct size' do
    expect(board10.size).to eq(10)
  end

  it 'receives in_bounds? with a single argument' do
    expect(board10).to respond_to(:in_bounds?).with(1).argument
  end

  it 'tests whether ship is within bounds' do
    ship1 = Ship.new(3)
    ship2 = Ship.new(3)
    ship1.place([0,0], 'N')
    ship2.place([10,0], 'E')
    expect(board10.in_bounds?(ship1)).to be_in_bounds
    expect(board10.in_bounds?(ship2)).not_to be_in_bounds
  end

  xit 'test whether ships are overlapped'

  xit 'announces winner'

  xit 'retuns coordinates of hits and misses so far'

  xit 'knows which players turn is next'

end