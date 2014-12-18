class Cell
	attr_accessor :content

	def initialize
		@hit = false
	end

	def shoot
		@hit = content.hit!
	end
	
end