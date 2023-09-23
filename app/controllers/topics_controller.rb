class TopicsController < ApplicationController

	def followed_topic
		topic = Topic.find(params[:topic_id])
	    current_user.topics.build(question_id: question.id)
	    if current_user.save
	      flash[:notice] = "Following Friend"
	    else
	      flash[:alert] = "There Was something Wrong with Tracking Request"
	    end
	    redirect_to friendships_path
	end
end
