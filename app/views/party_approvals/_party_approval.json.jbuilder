# frozen_string_literal: true

json.extract! party_approval, :id, :user, :party, :approval, :created_at, :updated_at
json.url party_approval_url(party_approval, format: :json)
