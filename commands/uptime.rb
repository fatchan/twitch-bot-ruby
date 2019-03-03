require_relative '../structures/command'

class Uptime < Command
	def initialize()
		super("uptime", "I show the uptime for the stream.")
	end
	
	def run
		return 'This stream has been up since the Big Bang.'
	end
end