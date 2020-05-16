class Deck
    # Getter and Setter methods for rank, suit and color
    attr_accessor :cards
   
    # Gets called when you call the new method to create an instance
    # deck = Deck.new
    def initialize
      @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
      @suits = %w(Hearts Spades Clubs Diamonds)
      @card_value = {
          "A" => 14, 
          "2" => 2, 
          "3" => 3, 
          "4" => 4, 
          "5" => 5, 
          "6" => 6, 
          "7" => 7, 
          "8" => 8, 
          "9" => 9, 
          "10" => 10, 
          "J" => 11,
          "Q" => 12,
          "K" => 13
    }
      @cards = []
      generate_deck
    end
   
    def shuffle_cards
     @cards.shuffle
    end
    
    def generate_deck
      @suits.each do |suit|
        @ranks.size.times do |i|
          # Ternary Operator
          color = (suit == 'Spades' || suit == 'Clubs') ? 'Black' : 'Red' 
          @cards << Card.new(@ranks[i], suit, color)
        end
      end
    end

    def display
        puts @cards
    end 
   
     def display_cards
      @cards.shuffle.each do |card|
        "#{card.rank} #{card.suit} (#{card.color})"
    end
  end
  
  def deal_card
        face_up = @cards.pop 
        # face_up_value = Card.value
        # puts "#{card.rank} #{card.suit} (#{card.color})"
        # face_up.rank = @card_value[rank.to_s]                    
        # puts "Is the face down card higher or lower than this card?"
        # @guess = gets.chomp.to_s
        # face_down_card = @cards.pop
        # puts "The face down card was #{face_down_card.rank} #{face_down_card.suit} (#{face_down_card.color})"
                      
     end 

   end

   class Card
    # Getter and Setter methods for rank, suit and color
    attr_accessor :rank, :suit, :color
    # Gets called when you call the new method to create an instance
    # card = Card.new('10', 'K', 'Black')
    def initialize(rank, suit, color)
      @rank = rank
      @suit = suit
      @color = color
    end

    # def self.value
    #     return @rank
    # end 
   end

deck = Deck.new
deck.generate_deck
deck.shuffle_cards
deck.display
# deck.deal_card