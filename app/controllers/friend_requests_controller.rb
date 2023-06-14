class FriendRequestsController < ApplicationController
  def index
    @requests = current_user.friend_requests
  end

  def create
    if FriendRequest.create!(user_id: current_user.id, friend_id: friend_request_params[:friend_id])
      redirect_to root_path
    end
  end

  def friend_request_params
    params.permit(:friend_id)
  end
end
