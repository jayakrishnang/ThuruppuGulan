class RoundsController < ApplicationController
	def show
		@round = Round.where(id: params[:id]).first
		@cards = current_player.current_hand(@round.id)
	end
end
