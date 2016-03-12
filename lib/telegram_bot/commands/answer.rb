module TelegramBot
  module Commands
    class Answer < Base
      attr_reader :answer

      def initialize(message, answer)
        @answer = answer
        super(message)
      end

      def execute
        client_api.send_message(
          chat_id: chat_id, 
          text: answer
        )
      end
    end
  end
end
