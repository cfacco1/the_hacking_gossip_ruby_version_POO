class Gossip
	attr_reader :author, :content

	def initialize(author, content)
  		@content = content
  		@author = author
	end

	def save
	    csv_string = "#{@author},#{@content}"
	    csv_file = File.open("db/gossip.csv", "a")
	    csv_file.puts(csv_string)
	    csv_file.close
  	end
end