module RoundsHelper
	def format_suit_symbol(card)
		case card
		when 'Hearts'
			"&hearts;"
		when 'Spade'
			"&spades;"
		when 'Clubs'
			"&clubs;"
		when 'Dice'
			"&diams;"
		end
	end

	def format_suit(card)
		case card.suit.downcase
		when 'hearts'
			"hearts"
		when 'spade'
			"spades"
		when 'clubs'
			"clubs"
		when 'dice'
			"diams"
		end
	end
end
