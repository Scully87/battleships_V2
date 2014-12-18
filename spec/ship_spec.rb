require 'ship'

describe 'Ship' do

	let(:ship){Ship.new(1)}

	context 'on initialize' do
		it 'can have a size' do
			expect(ship.size).to eq 1
		end
	end

	it 'can be hit' do
		ship.hit!
		expect(ship.hits).to eq 1
	end

	it "is floating" do
		expect(ship).to be_floating
	end

	it 'can be sunk' do
		ship.hit!
		expect(ship).to be_sunk
	end

	it "is not floating" do 
		ship.hit!
		expect(ship).not_to be_floating
	end

	it "can create an Aircraft carrier" do 
		ac = Ship.aircraft_carrier
		expect(ac.size).to eq 5
	end

	it "can create a Battle ship" do
		bs = Ship.battleship
		expect(bs.size).to eq 4
	end

	it "can create a Submarine" do
		sb = Ship.submarine
		expect(sb.size).to eq 3
	end

	it "can create a Patrol ship" do
		pb = Ship.patrol_boat
		expect(pb.size).to eq 2
	end



end