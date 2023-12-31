# frozen_string_literal: true

class AddFriendRequestsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_requests do |t|
      t.integer :user_id
      t.integer :friend_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
