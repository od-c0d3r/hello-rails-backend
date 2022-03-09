class Api::ApiController < ApplicationController
    def index
        message = Message.all.sample
        render json: {
            message: {
            message_id: message.id,
            message_content: message.content
            }
        }
    end
end