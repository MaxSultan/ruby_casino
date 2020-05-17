class SlotGame

  def initialize(player)
    @player = player
  end

  SLOT_COUNT = 3
  TOKENS     = %w[Cherry Orange Plum Bell Melon Bar]
  KEEP_PLAYING_RESPONSES = %w[y yes sure ok go]

  def play_forever
    begin
      # Using begin/end ensures one turn will be played
      # before asking the player if they want to go on
      play_one_turn
    end while @player.cash>0 && keep_playing?
    puts "You have ended with $#{@player.cash}; goodbye!"
  end

  def play_one_turn
    puts "Total cash: $#{@player.cash}"

    begin
      print "How much would you like to bet? "
      bet = gets.to_i
      puts "You only have $#{@player.cash}!" if bet > @player.cash
    end until bet <= @player.cash
    @player.cash -= bet

    results = SLOT_COUNT.times.map{ TOKENS.sample }
    puts results.join(' - ')
    winnings = bet * multiplier(results)

    if winnings>0
      @player.cash += winnings
      puts "You just won $#{winnings}!"
    else
      puts "Sorry, you're not a winner."
    end
  end

  def keep_playing?
    print "Would you like to continue? "
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
 
