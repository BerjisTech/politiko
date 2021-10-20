# frozen_string_literal: true

class CreatePartyNames < ActiveRecord::Migration[6.1]
  def change
    create_table :party_names, id: :uuid do |t|
      t.uuid :party
      t.text :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
