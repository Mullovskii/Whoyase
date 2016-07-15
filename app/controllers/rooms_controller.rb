class RoomsController < ApplicationController
  def show
  	#@message = Message.new
  	@messages = Message.all
  end
end
