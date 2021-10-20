# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts, id: :uuid do |t|
      t.uuid :user
      t.text :post
      t.integer :repost

      t.timestamps
    end
  end
end
