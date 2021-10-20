# frozen_string_literal: true

json.extract! party_name, :id, :party, :name, :start_date, :end_date, :created_at, :updated_at
json.url party_name_url(party_name, format: :json)
