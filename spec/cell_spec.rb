require 'cell'

describe Cell do
	let(:cell){Cell.new}
	let(:content){double :content}
	before{cell.content = content}

	it "can have content" do
		expect(cell.content).to eq content
	end

	it "can shoot it's content" do
		expect(content).to receive(:hit!)
		cell.shoot
	end

end