class Deck < ApplicationRecord
	belongs_to :match
	has_many :cards
end
