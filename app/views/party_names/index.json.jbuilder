# frozen_string_literal: true

json.array! @party_names, partial: 'party_names/party_name', as: :party_name
