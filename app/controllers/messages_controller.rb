class MessagesController < ApplicationController

	def new
		
	end
	
	def create
		@hero = Hero.new(hero_params)
	end

end