class MatchPlayer < ApplicationRecord
	belongs_to :team
	belongs_to :player
	belongs_to :match
end
