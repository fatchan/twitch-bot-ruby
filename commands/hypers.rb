require_relative '../structures/command'

class Hypers < Command
	def initialize()
		super("hypers", "I bring the hypers")
	end
	
	def run
		return 'hypershypershypershypershypershypershypershypershypershypers'
	end
end