class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.author_id = @current_hero.id
    if message.save
      ActionCable.server.broadcast 'room_channel',
        message: message.content,
        author_id: message.author_id
      head :ok
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :author_id)
    end
end