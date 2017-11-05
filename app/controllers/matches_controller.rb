class MatchesController < ApplicationController

	def index
		@matches = Match.all
	end

	def show
		@match = Match.where(id: params[:id]).first
		@rounds = @match.rounds
	end
end
