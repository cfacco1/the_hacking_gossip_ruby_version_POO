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
		return params = { content: content_que_tu_viens_de_demander, author: author_que_tu_viens_de_demander }
	end

end

