# frozen_string_literal: true

json.array! @previous_parties, partial: 'previous_parties/previous_party', as: :previous_party
