require 'cell'

describe Cell do
	let(:cell){Cell.new}
	let(:content){double :content}
	before{cell.content = content}

	it "can have content" do
		expect(cell.content).to eq content
	end

end