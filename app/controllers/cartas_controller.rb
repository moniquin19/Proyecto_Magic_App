class CartasController < ApplicationController
	
	require 'mtg_sdk'
	require 'net/http'
 
	def index
    if params[:searchbox].present?
      
      #@cartas = MTG::Card.where(name: params[:searchbox]).all
    else
      @cartas = MTG::Card.where(page: 1).where(pageSize: 50).all
    end		
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
