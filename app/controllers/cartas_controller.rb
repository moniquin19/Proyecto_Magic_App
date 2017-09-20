class CartasController < ApplicationController
	require 'mtg_sdk'
  def index
  	@card = MTG::Card.where(name: 'berserk').all  
  end
end
