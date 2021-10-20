# frozen_string_literal: true

json.array! @politician_approvals, partial: 'politician_approvals/politician_approval', as: :politician_approval
