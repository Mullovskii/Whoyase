# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
    #stream_from "room_channel_#{room.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  # def speak(data)
  # 	#ActionCable.server.broadcast 'room_channel', message: data['message']
  # 	Message.create! content: data['message'] #, author_id: '3' #session[:current_hero].id
  # end
end
