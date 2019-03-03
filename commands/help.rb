require_relative '../structures/command'

class Help < Command
	def initialize()
		super('help', 'use this command for help')
	end
	def run
		return 'this is the help command. very helpful.'
	end
end