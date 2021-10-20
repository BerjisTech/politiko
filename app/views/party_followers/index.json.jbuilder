# frozen_string_literal: true

json.array! @party_followers, partial: 'party_followers/party_follower', as: :party_follower
