# frozen_string_literal: true

class AddComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.references :user, foreign_key: true, null: false
      t.references :post, foreign_key: true, null: false

      t.timestamps
    end
  end
end
