# frozen_string_literal: true

class CreateChairs < ActiveRecord::Migration[6.1]
  def change
    create_table :chairs, id: :uuid do |t|
      t.uuid :politician
      t.uuid :party
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
