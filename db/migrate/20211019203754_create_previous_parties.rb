# frozen_string_literal: true

class CreatePreviousParties < ActiveRecord::Migration[6.1]
  def change
    create_table :previous_parties, id: :uuid do |t|
      t.uuid :party
      t.uuid :politician
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
