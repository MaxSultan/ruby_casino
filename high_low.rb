class High_low

    def play_high_low
        puts "\nWelcome to High/Low!"
        print "What would you like to bet: $"
        @bet = gets.to_i
        Deck.generate_deck
        Deck.shuffle_cards
        Deck.deal_card
        print "The face up card is #{}"
    end 

    # 2 arrays, one for user and one for the pc. Take the values from those arrays and then compare them. 
    player_given_card = "randomly"
    pc_value = "randomly selected value"

def high_low_result # result = 
    case
    when guess == 'higher' && bet_result = "higher or lower"
        puts "win"
    when guess == 'higher' && facedown_card_value < faceup_card_value 
        puts "lose"
    when guess == 'lower' && facedown_card_value < faceup_card_value 
        puts "win"
    when guess == 'lower' && facedown_card_value > faceup_card_value 
        puts "lose"
    else
        puts "Invalid Input"
    end
end 



