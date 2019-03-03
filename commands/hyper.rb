require_relative '../structures/command'

class Hyper < Command
	def initialize()
		super('hyper', 'I bring the hyper')
	end
	
	def run(args)
		return 'hyperhyperhyperhyperhyperhyperhyperhyperhyperhyperhyperhyper'
	end
end