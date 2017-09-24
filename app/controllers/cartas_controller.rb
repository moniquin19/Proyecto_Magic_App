class CartasController < ApplicationController
	require 'mtg_sdk'
  def index
  	@cards = MTG::Card.where(page: 2).where(pageSize: 100).all
  end

  def details
  	@card = MTG::Card.find(params[:id])
  end
end
