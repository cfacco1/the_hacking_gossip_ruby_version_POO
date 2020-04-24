class Controller
	attr_reader :gossip

	def initialize
		@view = View.new
	end

	def create_gossip
		params = @view.create_gossip
 		gossip = Gossip.new(params[:content], params[:author])
    	gossip.save	
    end

    def index_gossip
		@view.index_gossip(Gossip.all)
	end
end