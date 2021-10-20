# frozen_string_literal: true

class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties, id: :uuid do |t|
      t.text :name
      t.uuid :created_by
      t.uuid :current_chair
      t.text :history
      t.text :manifesto
      t.text :about

      t.timestamps
    end
  end
end
