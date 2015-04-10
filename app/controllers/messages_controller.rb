class MessagesController < ApplicationController

    def create
      @message = Message.new(message_params)
      redirect_to :root
    end

  private

    def message_params
      params.require(:message).permit(:name, :email, :message)
    end

end
