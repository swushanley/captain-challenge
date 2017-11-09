class Game < ApplicationRecord
  has_and_belongs_to_many :players
  accepts_nested_attributes_for :players
end
