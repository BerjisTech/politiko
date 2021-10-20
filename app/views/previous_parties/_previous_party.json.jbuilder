# frozen_string_literal: true

json.extract! previous_party, :id, :party, :politician, :start_date, :end_date, :created_at, :updated_at
json.url previous_party_url(previous_party, format: :json)
