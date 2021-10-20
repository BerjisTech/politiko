# frozen_string_literal: true

json.array! @politicians, partial: 'politicians/politician', as: :politician
