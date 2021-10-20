# frozen_string_literal: true

class CreatePartyFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :party_followers, id: :uuid do |t|
      t.uuid :user
      t.uuid :party

      t.timestamps
    end
  end
end
