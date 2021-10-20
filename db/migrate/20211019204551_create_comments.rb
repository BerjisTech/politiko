# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.uuid :user
      t.uuid :post
      t.text :comment

      t.timestamps
    end
  end
end
