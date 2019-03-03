module Utils
	@uptime=nil

	def self.uptime
		return @uptime
	end

	def self.uptime=(val)
		@uptime = val
	end

	def self.hms_string(seconds)
		hours = seconds/3600.floor
		seconds -= hours*3600
		minutes = seconds/60.floor
		seconds -= minutes*60
		return "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
	end
end