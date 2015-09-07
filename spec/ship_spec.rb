require_relative '../lib/ship.rb'



describe Ship do

  let (:ship){ Ship.new(3) }
  let (:origin){ [0,0]}
  let (:orientation){ 'N'}

  it 'ship makes ship object' do
      expect(Ship).to respond_to(:new).with(1).argument
  end

  it 'ship makes ship object of correct length' do
    expect(ship.length).to eq(3)
  end

  it 'when placed, ship has location and orientation' do
    expect(ship.place(origin, orientation)).to eq([[0,0],[0,1],[0,2]])
  end

  it 'ship reacts to fire' do
    expect(ship).to respond_to(:fire).with(1).argument
  end

  it 'ship reports hit' do
    ship.place(origin, orientation)
    expect(ship.fire([0,1]) ).to eq(true)
    expect(ship.fire([0,3]) ).to eq(false)
  end


  xit 'ship reports sunk'

end
