class HighLow

  def initialize(player)
    @player = player
  end

    def deck_of_cards
        values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
        suits = ['hearts', 'diamonds', 'clubs', 'spades']
        deck = []
      
        values.each_with_index do |v, i|
          suits.each do |s|
            deck.push({
              score: i,
              value: v,
              suit: s,
            })
          end
        end
        return deck.shuffle
      end

      def keep_playing?
        print "Would you like to continue? "
        KEEP_PLAYING_RESPONSES.include?(gets.chomp.downcase)
      end
    
      def play_high_low
        deck = deck_of_cards
        puts "Welcome to High/Low #{@player.name}"
        puts "How much would you like to bet?"
        print '>'
        @bet = gets.chomp.to_i
        face_up_card = deck.pop
        puts "#{face_up_card[:value]} of #{face_up_card[:suit]} is the face up card" 
        puts ""
        puts "do you think the face down card is lower or higher?"
        puts 'type the word lower or higher to make a choice'
        @guess = gets.chomp.to_s
        face_down_card = deck.pop
        puts "the face down card was the "
        puts "#{face_down_card[:value]} of #{face_down_card[:suit]}"
        @face_up_value = face_up_card[:score]
        @face_down_value = face_down_card[:score]
        result = @face_down_value > @face_up_value ? 'higher' : 'lower'
        puts "the face down card was #{result}"
        result == @guess ? @player.add_cash(@bet) : @player.lose_cash(@bet)
        if result == @guess 
            puts "You win!! $#{@bet} has been added to your wallet"
        else
        puts "You lose. you lost your bet of $#{@bet}"
        end 
      end 
end 