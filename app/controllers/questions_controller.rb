class QuestionsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@questions = Question.all
	end

	def show
		@question = Question.find(params[:id])
	end
end
