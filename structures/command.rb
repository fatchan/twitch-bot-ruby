class Command
	attr_accessor :name, :description
	def initialize(name, help)
		@name = name
		@description = help
	end
	def run
		return 'this command has no run() method'
	end
end
