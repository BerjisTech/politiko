# frozen_string_literal: true

json.extract! political_follower, :id, :user, :politician, :created_at, :updated_at
json.url political_follower_url(political_follower, format: :json)
