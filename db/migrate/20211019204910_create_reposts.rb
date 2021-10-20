# frozen_string_literal: true

class CreateReposts < ActiveRecord::Migration[6.1]
  def change
    create_table :reposts, id: :uuid do |t|
      t.uuid :content
      t.integer :content_type
      t.uuid :user

      t.timestamps
    end
  end
end
