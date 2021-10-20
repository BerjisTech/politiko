# frozen_string_literal: true

class CreatePartyApprovals < ActiveRecord::Migration[6.1]
  def change
    create_table :party_approvals, id: :uuid do |t|
      t.uuid :user
      t.uuid :party
      t.integer :approval

      t.timestamps
    end
  end
end
