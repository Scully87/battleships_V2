class Ship
	attr_reader :size
	attr_accessor :hits

	def initialize(size)
		@size = size
		@hits = 0
	end

	def hit!
		self.hits += 1
	end

	def sunk?
		@size == @hits
	end

	def floating?
		!sunk?
	end

	def self.aircraft_carrier
		new 5
	end

	def self.battleship
		new 4
	end

	def self.submarine
		new 3
	end

	def self.patrol_boat
		new 2
	end

end
