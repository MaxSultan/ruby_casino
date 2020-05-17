class Player
    attr_reader :name 
    attr_accessor :cash 

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