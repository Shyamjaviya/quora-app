class FriendshipsController < ApplicationController
	before_action :authenticate_user!

	def index
		@friends = current_user.friends
	end

	def followed_user
		friend = User.find(params[:friendship_id])
	    current_user.friendships.build(friend_id: friend.id)
	    if current_user.save
	      flash[:notice] = "Following Friend"
	    else
	      flash[:alert] = "There Was something Wrong with Tracking Request"
	    end
	    redirect_to friendships_path
	end

	def destroy
		friendship = current_user.friendships.where(friend_id: params[:id]).first
		friendship.destroy
		flash[:notice] = "Stopped Following"
		redirect_to friendship_path
	end
end
