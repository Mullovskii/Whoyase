class RoomsController < ApplicationController
  def show
  	#@message = Message.new
  	@messages = Message.all
  	@ip = remote_ip
  	@current_hero = Hero.find_by_id(session[:current_hero])
  end
end
