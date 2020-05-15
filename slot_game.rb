class SlotGame
    SLOT_COUNT = 3
    TOKENS     = %w[Cherry Orange Plum Bell Melon Bar]
    KEEP_PLAYING_RESPONSES = %w[y yes sure ok go]
    # def initialize(cash=nil)
    #     unless cash
    #       begin
    #         print "\nHow much total money would you like to play with today? "
    #         cash = gets.to_i
    #         puts "You must have a positive bank account to play!" if cash<=0
    #       end until cash > 0
    #     end
    #     @cash = cash
    #   end
    
    def play_forever
      begin
        # Using begin/end ensures one turn will be played
        # before asking the player if they want to go on
        play_one_turn
      end while @cash>0 && keep_playing?
      puts "\nYou have ended with $#{@cash}; goodbye!"
    end
  
    def play_one_turn
      puts "\nTotal cash: $#{@cash}"
  
      begin
        print "\nHow much would you like to bet? "
        @bet = gets.to_i
        puts "\nYou only have $#{@cash}!" if bet > @cash
      end until bet <= @cash
      @cash -= bet
  
      results = SLOT_COUNT.times.map{ TOKENS.sample }
      puts results.join(' - ')
      winnings = bet * multiplier(results)

    if winnings>0
      @cash += winnings
      puts "\nYou just won $#{winnings}!"
    else
      puts "\nSorry, you're not a winner."
    end
  end

  def keep_playing?
    print "\nWould you like to continue? "
    KEEP_PLAYING_RESPONSES.include?(gets.chomp.downcase)
  end

  private # Don't let anyone outside run our magic formula!
    def multiplier(*tokens)
      case tokens.flatten.uniq.length
        when 1 then 3
        when 2 then 2
        else 0
      end
    end
end

# SlotGame.new.play_forever 
# if __FILE__==$0 