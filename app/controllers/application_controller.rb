class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  # before_action :current_hero , only: [:show]

  # after_action :reset_session

  # def remote_ip
  #   # if request.remote_ip == '127.0.0.1'
  #   #   # Hard coded remote address
  #   #   '123.45.67.89'
  #   # else
  #     request.remote_ip
  #   # end
  # end

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
