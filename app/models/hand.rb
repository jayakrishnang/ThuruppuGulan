class Hand < ApplicationRecord
	belongs_to :card
	belongs_to :player
	belongs_to :round
end
