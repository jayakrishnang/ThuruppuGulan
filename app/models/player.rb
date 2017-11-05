class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# belongs_to :team
	has_many :hands

	def current_hand(round_id)
		self.hands.includes(:card).where(round_id: round_id).order('cards.suit, cards.weight').map(&:card).flatten.reverse
	end
end
