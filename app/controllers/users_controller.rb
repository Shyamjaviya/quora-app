class UsersController < ApplicationController
	before_action :authenticate_user!

	def follow_user
		byebug
		user_to_follow = User.find(params[:id])

		unless current_user.following?(user_to_follow)
			current_user.followed_users << user_to_follow
			flash[:success] = "You are now following #{user_to_follow.username}"
		else
			flash[:notice] = "You are already following #{user_to_follow.username}"
		end

		redirect_to user_to_follow

	end
end
