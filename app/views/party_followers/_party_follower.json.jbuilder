# frozen_string_literal: true

json.extract! party_follower, :id, :user, :party, :created_at, :updated_at
json.url party_follower_url(party_follower, format: :json)
