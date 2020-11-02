class GossipController < ApplicationController

    def index         
    end

    def new
    end

    def show
        @number = params[:id]
		@gossip = Gossip.find(params[:id])
    end 

    def create
        @gossip = Gossip.new(params[:id])
        
        if @gossip.save
        redirect_to action: "index"
        else
        render action: "new"        
        end 
    end


end
