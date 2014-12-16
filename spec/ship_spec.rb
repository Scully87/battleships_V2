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

end