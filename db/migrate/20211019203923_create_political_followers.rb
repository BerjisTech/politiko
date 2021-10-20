# frozen_string_literal: true

class CreatePoliticalFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :political_followers, id: :uuid do |t|
      t.uuid :user
      t.uuid :politician

      t.timestamps
    end
  end
end
