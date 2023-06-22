class FriendRequestsController < ApplicationController
  def index
    @received_friend_requests = FriendRequest.received_friend_requests(current_user.id)
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
