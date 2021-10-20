# frozen_string_literal: true

class Politician < ApplicationRecord
    has_one_attached :photo
    has_rich_text :history
    has_rich_text :manifesto
end
