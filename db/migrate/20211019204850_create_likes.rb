# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes, id: :uuid do |t|
      t.uuid :content
      t.integer :content_type
      t.uuid :user

      t.timestamps
    end
  end
end
