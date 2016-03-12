require 'telegram/bot'
require_relative 'commands'


module TelegramBot
  class Client 
    TOKEN = '217512949:AAFj98AjW3b97PD77Wyp7EGrqyfRQFYvLDs' 

    class << self 
      def client
        @client ||= Telegram::Bot::Client.new(TOKEN)
      end

      def listen 
        puts "listening longpooling"

        @user = TestUser.new

        client.listen do |message| 
          puts "new message"

          process(message)
        end
      end

      def set_state(state)
        @state = state
      end

      def get_state
        @state
      end

      def update(data)
        puts "new update"

        update = Telegram::Bot::Types::Update.new(data)

        update_id = update.update_id
        message = update.message
        message_id = message.message_id 

        process(message)
      end

      def process(message)
        # if message.location
        #   TelegramBot::Commands::SetLocation.execute(message)
        #   TelegramBot::Commands::GetLocation.execute(message)
        # end

        case message.text
        when '/start'
          self.set_state('start')

          titles = [
            ['Начать оформление заказа', 'Адрес, график работы'],
            ['Адрес, график работы'],
            ['Мои заказы'],
            ['Мои заказы'],
            ['Мои заказы'],
            ['Мои заказы'],
            ['Мои заказы'],
            ['Мои заказы'],
            ['Мои заказы'],
            ['Мои заказы'],
            ['Мои заказы'],
            ['Как работает программа'],
            ['Назад'],
          ]

          TelegramBot::Commands::AnswerWithKeyboard.execute(message, titles)

        when 'Начать оформление заказа'
          self.set_state('start_order')

          titles = [
            ['Заказ в кафе'],
            ['Заказ на вынос'],
            ['Назад'],
          ]

          TelegramBot::Commands::AnswerWithKeyboard.execute(message, titles)
        when 'Назад'
          current_state = self.get_state

          if current_state === 'start'
            text = 'you can`t move'
          elsif current_state === 'start_order'
            text = 'your new state start'
          end

          TelegramBot::Commands::Answer.execute(message, text)
        else

        end
      end

    end
  end
end
