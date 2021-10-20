# frozen_string_literal: true

json.extract! party, :id, :name, :created_by, :current_chair, :history, :manifesto, :about, :created_at, :updated_at
json.url party_url(party, format: :json)
