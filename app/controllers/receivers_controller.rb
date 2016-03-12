class ReceiversController < ApplicationController

  def receive_from_telegram
    render text: 'ok'
  end

end
