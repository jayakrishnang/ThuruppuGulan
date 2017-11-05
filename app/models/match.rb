class Match < ApplicationRecord
	has_many :rounds
	has_many :match_players
	has_one :deck

	def begin_round(dealer_id)
		Round.create(match: self, dealer_id: dealer_id)
	end

	def players
		match_players.includes(:player).order(:order).map(&:player).flatten
	end
end
