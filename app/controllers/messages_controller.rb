class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.author_id = session[:current_hero]
    if message.save
      ActionCable.server.broadcast 'room_channel',
        message: message.content,
        author_id: message.author_id
      head :ok
    end
  end


  def clear
    Message.destroy_all
    redirect_to :root
  end

  private

    def message_params
      params.require(:message).permit(:content, :author_id)
    end
end