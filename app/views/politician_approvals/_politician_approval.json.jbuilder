# frozen_string_literal: true

json.extract! politician_approval, :id, :user, :party, :approval, :created_at, :updated_at
json.url politician_approval_url(politician_approval, format: :json)
