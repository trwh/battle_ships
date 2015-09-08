require_relative '../lib/ship.rb'



describe Ship do

  let (:ship1){ Ship.new(1) }
  let (:ship2){ Ship.new(2) }
  let (:ship3){ Ship.new(3) }
  # let (:origin){ [0,0] }
  # let (:orientation){ 'N' }
  # let (:ship){ Ship.new(3) }

  it 'ship makes ship object' do
      expect(Ship).to respond_to(:new).with(1).argument
  end

  it 'ship makes ship object of correct length' do
    expect(ship3.length).to eq(3)
  end

  it 'when placed, ship has location and orientation' do
    expect(ship3.place([0,0], 'N')).to eq([[0,0],[0,1],[0,2]])
    expect(ship2.place([3,4], 'E')).to eq([[3,4],[4,4]])
    expect(ship1.place([3,4], 'W')).to eq([[3,4]])
  end

  it 'ship reacts to fire' do
    expect(ship3).to respond_to(:fire).with(1).argument
  end

  it 'ship reports hit' do
    ship3.place([0,0], 'N')
    expect(ship3.fire([0,1]) ).to eq(true)
    expect(ship3.fire([0,3]) ).to eq(false)
  end


  xit 'ship reports sunk'

end
