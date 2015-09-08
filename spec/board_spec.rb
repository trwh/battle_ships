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
    expect(:board10).to respond_to(:in_bounds?).with(1).argument
  end

  it 'tests whether ship is within bounds'


  xit 'test whether ships are overlapped'

  xit 'announces winner'

  xit 'retuns coordinates of hits and misses so far'

  xit 'knows which players turn is next'

end