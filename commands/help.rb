require_relative '../structures/command'

class Help < Command
	def initialize()
		super('help', 'Use this command for help.')
	end
  
	def run(args)
		return 'This is the help command. Very helpful.'
	end
end