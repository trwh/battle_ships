require_relative '../lib/ship.rb'



describe Ship do

  let (:ship){ Ship.new(3) }

  it 'ship makes ship object' do
      expect(Ship).to respond_to(:new).with(1).argument
  end

  it 'ship makes ship object of correct length' do
    expect(ship.length).to eq(3)
  end

  it 'when placed, ship has location and orientation' do
    origin=[0,0]
    orientation='N'
    expect(ship.place(origin, orientation)).to eq([[0,0],[0,1],[0,2]])
  end

  xit 'ship reacts to fire'

  xit 'ship reports hit'

  xit 'ship reports sunk'

end
