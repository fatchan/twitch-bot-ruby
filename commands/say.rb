require_relative '../structures/command'

class Say < Command
	def initialize()
		super("say", "I say a thing the user says")
	end
	
	def run
		return 'Wow very thing, much say. Nice.'
	end
end