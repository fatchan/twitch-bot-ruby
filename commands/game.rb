require_relative '../structures/command'

class Game < Command
	def initialize()
		super("game", "I change the game the streamer is playing")
	end
	
	def run
		return 'This streamer is now playing something.'
	end
end