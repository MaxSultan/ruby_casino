# Basic Objectives:

# Start game player has a name and a wallet  (done)
# Player can go to different games via menu
# Slots
# High / Low
# Use classes to start the casino, bankroll, and each individual game (done ish)
# Player places bet and wins / loses (hint: rand)
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Player's bankroll goes up and down with wins and losses
# Ability to move to and from games

require_relative 'player_class'
# require_relative 'slot_game'

class Casino
    include High_low
    
    def self.welcome
    puts "Welcome to the Casino"
    puts "what is your name?"
    print '>'
    name = gets.chomp.to_s
        begin
          print "\nHow much total money would you like to play with today? "
          cash = gets.to_i
          puts "You must have a positive bank account to play!" if cash<=0
        end until cash > 0
      @cash = cash
    #   play_forever
    player = Player.new(name, @cash)
    end 


    def play_slots
    puts "\nWelcome to the slot machine"
    Slotgame.play_forever
    end 
    
    

    def self.main_menu
        puts "\nWhat game do you want to play?"
        puts "1) Slots"
        puts "2) High/Low"
        print "> "
        menu_selector = gets.chomp.to_i
        case 
            when 1
                # SlotGame.new.play_forever 
            when 2
                play_high_low
            else
                puts "----Invalid Option----"
                puts " \nPress RETURN to return to Main Menu:"
                print "> "
                gets.chomp
                main_menu
            
        end
    end 

    
    
end 



Casino.welcome
Casino.main_menu
Casino.play_high_low















