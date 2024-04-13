class Frog < ApplicationRecord
  has_one :habit, dependent: :destroy
  has_many :combats, dependent: :destroy

  validates :name, presence: true
end
