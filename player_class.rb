class Player
    attr_reader :name 
    attr_accessor :case

    def initialize(name, wallet)
    @name = name
    @cash = wallet
    end 

    def add_cash
        @bet += @cash
     end 
 
     def lose_cash
         @bet -= @cash
     end 

end 