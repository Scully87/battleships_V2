require 'water'

describe 'water' do

	xit 'can be hit' do
		water = Water.new
		water.hit!
		expect(water).to be_hit!
	end

end