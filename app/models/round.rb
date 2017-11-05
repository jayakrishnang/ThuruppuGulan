class Round < ApplicationRecord
	belongs_to :match
	has_many :tricks
	has_many :bids

	def dealer
		Player.where(id: dealer_id).first
	end
end
