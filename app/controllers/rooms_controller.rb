class RoomsController < ApplicationController
before_action :current_hero , only: [:show]
  def show
  	@message = Message.new
  	@messages = Message.paginate(:page => params[:page], :per_page => 100)
  	@current_hero = Hero.find_by_id(session[:current_hero])
  end

 private
 def current_hero
  	session[:current_hero] = nil
  	#session[:current_hero] = Hero.order("RANDOM()").first.id
  	if session[:current_hero] == nil
  		if Hero.all.length < 1
  			Hero.create! name: "Бэтмен"
  		end 
  		session[:current_hero] = Hero.order("RANDOM()").first.id
  		@current_hero = Hero.find_by_id(session[:current_hero])
  	else
  		@current_hero = Hero.find_by_id(session[:current_hero])
  	end
  end
end
