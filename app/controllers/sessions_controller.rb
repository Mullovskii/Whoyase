class SessionsController < ApplicationController
	
  def create
  	session[:current_hero] = Hero.order("RANDOM()").first.id
  end

  # def destroy_hero
  # 	sleep 5.seconds
  # 	reset_session
  # end
end