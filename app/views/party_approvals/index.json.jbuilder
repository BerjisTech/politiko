# frozen_string_literal: true

json.array! @party_approvals, partial: 'party_approvals/party_approval', as: :party_approval
