require_relative '../structures/command'

class Hype < Command
	def initialize()
		super("hype", "I bring the hype")
	end
	
	def run
		return 'hypehypehypehypehypehypehypehypehypehypehypehype'
	end
end