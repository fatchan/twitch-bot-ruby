require_relative '../structures/command'
require_relative '../utils'

class Uptime < Command
	def initialize()
		super('uptime', 'I show the uptime for the stream.')
	end
	
	def run(args)
		now = Time.now.to_i
		difference = now-Utils.uptime
		return "I have been up for: #{Utils.hms_string(difference)}"
	end
end