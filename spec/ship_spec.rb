require_relative '../lib/ship.rb'



describe Ship do

  let (:ship1){ Ship.new(1) }
  let (:ship2){ Ship.new(2) }
  let (:ship3){ Ship.new(3) }
  # let (:origin){ [0,0] }
  # let (:orientation){ 'N' }
  # let (:ship){ Ship.new(3) }

  it 'ship takes a single argument' do
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

  describe 'battle' do

    it 'ship reacts to fire' do
      expect(ship3).to respond_to(:fire).with(1).argument
    end

    it 'raises an error if ship receives fire before being placed' do
      expect{ ship3.fire('coordinates') }.to raise_error 'Cannot fire on ship that has not been placed'
    end

    it 'ship reports hit' do
      ship3.place([0,0], 'N')
      expect(ship3.fire([0,1]) ).to eq(true)
      expect(ship3.fire([0,3]) ).to eq(false)
    end

    it 'ship reports sunk' do
      ship3.place([0,0], 'N')
      3.times { ship3.fire([0,0]) }
      expect(ship3).not_to be_sunk
      ship3.fire([0,1])
      ship3.fire([0,2])
      expect(ship3).to be_sunk
    end

  end

end
