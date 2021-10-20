# frozen_string_literal: true

json.array! @parties, partial: 'parties/party', as: :party
