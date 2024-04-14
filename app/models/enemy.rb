class Enemy < ApplicationRecord
  validates :name, presence: true
  has_many :combats, dependent: :destroy
  has_many :attacks, as: :attackable
end
