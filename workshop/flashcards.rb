class Card
	attr_accessor :front, :back
	
	def initialize front, back
		@front = front
		@back	= back
	end

end

card1 = Card.new("cat","neko")
card2 = Card.new("dog","inu")

deck = [card1, card2]
deck.each do |card|
	front = card.front
	back = card.back
	print "#{front} > "
	guess = gets.chomp

	if guess == back
		puts "Correct"
	else
		puts "Incorrect. The answer was #{back}."
	end

end
