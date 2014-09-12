class Application
	def initialize
		@decks = []
	end

	def << deck
		@decks << deck
	end	

	def play
		display_decks
		deck = get_deck
		deck.play
	end

	def display_decks
		@decks.each do |deck|
			puts deck.name
		end
	end

	def get_deck
		name = gets.chomp
		@decks.detect do |deck|
			deck.name == name	
		end
	end
end

class Card
	attr_accessor :front, :back

	def initialize front, back
		@front = front
		@back = back
	end

	def correct? guess
		guess == @back
	end
	def play
	end
end

class Deck
	attr_reader :name, :cards
	def initialize name
		@name = name
		@cards = []
	end

	def << card
		@cards << card
	end

	def shuffle
		@cards.shuffle!
	end
end

card1 = Card.new("cat","neko")
card2 = Card.new("dog","inu")

deck = Deck.new("Japanese")
deck << card1
deck << card2

