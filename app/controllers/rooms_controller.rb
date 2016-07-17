class RoomsController < ApplicationController
  def show
  	#@message = Message.new
  	@messages = Message.all
  	@ip = remote_ip
  end
end
