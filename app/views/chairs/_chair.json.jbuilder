# frozen_string_literal: true

json.extract! chair, :id, :politician, :party, :start_date, :end_date, :created_at, :updated_at
json.url chair_url(chair, format: :json)
