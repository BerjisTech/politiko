# frozen_string_literal: true

class AddRepotTypeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :repost_type, :integer
  end
end
