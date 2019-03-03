require_relative '../structures/command'

class Info < Command
	def initialize()
		super("info", "I show info about the streamer")
	end
	
	def run
		return 'This is the info command. Very informative.'
	end
end