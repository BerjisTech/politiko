# frozen_string_literal: true

class CreatePoliticianApprovals < ActiveRecord::Migration[6.1]
  def change
    create_table :politician_approvals, id: :uuid do |t|
      t.uuid :user
      t.uuid :party
      t.integer :approval

      t.timestamps
    end
  end
end
