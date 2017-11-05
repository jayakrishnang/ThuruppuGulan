class Card < ApplicationRecord
	has_one :hand
	belongs_to :deck
end
