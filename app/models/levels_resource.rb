class LevelsResource < ApplicationRecord
  belongs_to :resource
  belongs_to :level

  validates :rate, :max_resources, :min_resources, { presence: true,
                                                     numericality: { greater_than_or_equal_to: 0 }}
end
