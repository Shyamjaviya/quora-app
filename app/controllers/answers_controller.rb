class AnswersController < ApplicationController
	before_action :authenticate_user!

	def create
		@question = Question.find(params[:question_id])
		@answer = @question.answers.create(answer_params.merge(user_id: current_user.id))
		redirect_to @question
	end
end
