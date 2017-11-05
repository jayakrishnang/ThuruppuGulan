class Trick < ApplicationRecord
	belongs_to :round
	has_many :plays
end
