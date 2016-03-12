module TelegramBot
  module Commands
    class Start < Base
      def execute
        # user = User.telegram(telegram_user.id).first_or_create do |obj|
        #   obj.first_name = telegram_user.first_name
        #   obj.last_name = telegram_user.last_name
        # end

        titles = [
          ['Начать оформление заказа'],
          ['Адрес, график работы'],
          ['Мои заказы'],
          ['Как работает программа']
        ]

        #
        # client_api.send_message(chat_id: chat_id, text: '/1. asdsadsad')
        #
        kb = Telegram::Bot::Types::ReplyKeyboardMarkup
          .new(keyboard: titles, one_time_keyboard: true)

        client_api.send_message(
          chat_id: chat_id, 
          text: titles.join("\n"),
          reply_markup: kb
        )
        # hello_text = I18n.t('hello_text', user: telegram_user.first_name)
        # say(hello_text)
      end
    end
  end
end
