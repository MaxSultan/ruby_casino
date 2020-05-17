class Player
    attr_reader :name 
    attr_accessor :cash #this was set to 'case' so i changed it to 'cash' just FYI

    def initialize(name, cash)
    @name = name
    @cash = cash
    end 
    
     def lose_cash(bet)
        @cash -= bet
    end

    def add_cash(bet)
        @cash += bet
    end 
end