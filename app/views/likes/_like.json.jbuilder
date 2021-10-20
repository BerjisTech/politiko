# frozen_string_literal: true

json.extract! like, :id, :content, :content_type, :user, :created_at, :updated_at
json.url like_url(like, format: :json)
