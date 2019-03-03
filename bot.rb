require 'isaac'
require 'yaml'

config = YAML.load_file('config.yml')

commands = {}
Dir['./commands/*.rb'].each do |file|
	require file 
	command_name = File.basename(file, '.rb')
	commands[command_name] = Object.const_get(command_name.capitalize).new
end


configure do |c|
	c.nick = config['nick']
	c.server = config['server']
	c.port = config['port']
	c.password = config['password']
end

on :connect do
  join config['channel']
	puts "Connected to #{config['channel']}"
end

on :channel do
	if message.start_with?(config['prefix'])
		message_no_prefix = message[1..-1]
		command_name = message_no_prefix.split[0]
		command = commands[command_name]
		unless command.nil?
			puts "#{user} used #{command_name}"
			msg config['channel'], command.run
		end
	end
end
