# frozen_string_literal: true

class CreatePoliticians < ActiveRecord::Migration[6.1]
  def change
    create_table :politicians, id: :uuid do |t|
      t.text :name
      t.text :alias
      t.uuid :current_party
      t.text :history
      t.text :manifesto

      t.timestamps
    end
  end
end
