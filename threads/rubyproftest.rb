# typed: false
# frozen_string_literal: true

require 'date'

100_000.times do
  Date.parse(Date.today.to_s)
end
