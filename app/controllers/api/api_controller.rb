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

  def show
    render json: {
      message: {
        message_id: 0,
        message_content: 'GreetingAPI App v1.0'
      }
    }
  end

  def error
    render json: {
      message: {
        message_id: 0,
        message_content: 'Not found: Make sure end-point have /api/greeting namesace'
      }
    }
  end
end
