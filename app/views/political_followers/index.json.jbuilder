# frozen_string_literal: true

json.array! @political_followers, partial: 'political_followers/political_follower', as: :political_follower
