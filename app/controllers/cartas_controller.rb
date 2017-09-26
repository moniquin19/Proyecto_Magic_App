class CartasController < ApplicationController
	
	require 'mtg_sdk'
	require 'net/http'
 
	def index
		@cartas = MTG::Card.where(name: params[:searchbox]).all
	end

  	def self.search(search)
  		if search
  			where('card LIKE ?',"%{search}%")
  		else
  			scoped
  		end
  	end

  def details
  	@card = MTG::Card.find(params[:id])
  end
end
