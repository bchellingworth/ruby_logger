class Log
	def initialize
		@log = []
	end

	def create(log_item)
		log_item = Time.now.to_s + ' | ' + log_item
		@log << log_item
		log_item.to_s
	end

	def print_to_console(log_item)
		puts log_item
	end

	def print_log_to_console
		@log.each do |line|
			puts line
		end
	end

	def print_to_file(string)
		file = File.open(File.dirname(__FILE__) + '/log.txt', 'a+')
			file.write (string)
			file.write "\n"
		file.close
	end

	def print_log_to_file
		file = File.open(File.dirname(__FILE__) + '/log.txt', 'a+')
		@log.each do |line|
			file.write line
			file.write "\n"
		end
		file.close
	end

	def add(string)
		log_item = self.create(string)
		self.print_to_console(log_item)
		self.print_to_file(log_item)
	end
end
