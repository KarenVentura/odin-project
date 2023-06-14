# == Schema Information
#
# Table name: friend_requests
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  friend_id  :integer
#  accepted   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class FriendRequest < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'
end
