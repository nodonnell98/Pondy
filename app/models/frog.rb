class Frog < ApplicationRecord
  has_one :habit, dependent: :destroy
  has_many :combats, dependent: :destroy
  has_many :attacks, as: :attackable

  validates :name, presence: true

  accepts_nested_attributes_for :habit
end
