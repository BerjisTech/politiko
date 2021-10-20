# frozen_string_literal: true

class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies, id: :uuid do |t|
      t.uuid :user
      t.uuid :comment
      t.text :reply

      t.timestamps
    end
  end
end
