require 'bundler'
Bundler.require

class View

	def initizalize
	end

	def create_gossip
		puts "Enter Author of the Gossip"
		author = gets.chomp
		puts "Enter content of the gossip"
		content = gets.chomp
		return params = { "content": content, "author": author }
	end

	def index_gossip (all_gossips)
		all_gossips.each_with_index { |gossip,index| puts "#{index+1} Author : #{gossip.author}\nContent : #{gossip.content}"}
	end

end

