class Attack < ApplicationRecord
  has_many :attackables, as: :attackable

  validates :name, presence: true
end
