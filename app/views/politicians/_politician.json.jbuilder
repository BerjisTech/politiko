# frozen_string_literal: true

json.extract! politician, :id, :name, :alias, :current_party, :history, :manifesto, :created_at, :updated_at
json.url politician_url(politician, format: :json)
