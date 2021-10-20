# frozen_string_literal: true

json.extract! repost, :id, :content, :content_type, :user, :created_at, :updated_at
json.url repost_url(repost, format: :json)
