# Basic Objectives:

# Start game player has a name and a wallet  (done)✓
# Player can go to different games via menu(done)✓
# Slots (done)✓
# High / Low (done)✓
# Use classes to start the casino, bankroll, and each individual game (done)✓
# Player places bet and wins / loses (hint: rand) (done)✓
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)(done)✓
# Player's bankroll goes up and down with wins and losses(done)✓
# Ability to move to and from games✓

require_relative 'player_class'
require_relative 'high_low'
require_relative 'slot_game'

class Casino

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
   
    @player = Player.new(name, @cash)
    end 

    def play_slots
    puts "\nWelcome to the slot machine"
    Slotgame.play_forever
    end 
    
    def self.main_menu
        puts "\nWhat game do you want to play?"
        puts "1) Slots"
        puts "2) High/Low"
        puts "3) QUIT"
        print "> "
        menu_selector = gets.chomp.to_i

        case menu_selector
            when 1
                slots_game = SlotGame.new(@player)
                slots_game.play_forever
                puts "Your total cash is: $#{@player.cash}"
                self.main_menu
                SlotGame.play_forever 
            when 2
                high_low_game = HighLow.new(@player)
                high_low_game.play_high_low
                puts "Your total cash is: $#{@player.cash}"
                self.main_menu
            when 3
                puts "You ended with $#{@player.cash}"
                puts "Thank you for playing #{@player.name}! Goodbye!"
                exit

            else
                puts "----Invalid Option----"
                puts " \nPress RETURN to return to Main Menu:"
                print "> "
                gets.chomp
                self.main_menu
        end
    end 
end 

Casino.welcome
Casino.main_menu
















