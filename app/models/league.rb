# frozen_string_literal: true

class League < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
end
