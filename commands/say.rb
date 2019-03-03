require_relative '../structures/command'

class Say < Command
	def initialize()
		super('say', 'I say a thing the user says')
	end
	
	def run(args)
		return args.join
	end
end