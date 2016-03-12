module TelegramBot
  module Commands
    class AnswerWithKeyboard < Base
      attr_reader :options

      def initialize(message, options)
        @options = options
        super(message)
      end

      def execute
        kb = Telegram::Bot::Types::ReplyKeyboardMarkup
          .new(keyboard: options, one_time_keyboard: true)

        client_api.send_message(
          chat_id: chat_id, 
          text: options.join("\n"),
          reply_markup: kb
        )
      end
    end
  end
end
