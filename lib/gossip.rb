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

  	def self.all
  		all_gossips= []
  		iterator_lines = 0
		File.open('db/gossip.csv','r').each_line do |line|
			data = line.split(/\t/)
			all_gossips[iterator_lines]= Gossip.new(data[0].split(",").at(0),data[0].split(",").at(1))
			iterator_lines+=1
		end
		return all_gossips
	end
  # 1)création d'un array vide qui s'appelle all_gossips

  # 2)chaque ligne de ton CSV.each do |ligne|
    # 2-a) gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
    # 2-b) all_gossips << gossip_provisoire - permet de rajouter le gossip provisoire au array
  # end

  # 3)return all_gossips - on renvoie le résultat
end