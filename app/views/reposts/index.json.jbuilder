# frozen_string_literal: true

json.array! @reposts, partial: 'reposts/repost', as: :repost
