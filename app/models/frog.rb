class Frog < ApplicationRecord
  has_one :habit, dependent: :destroy

  validates :name, presence: true
end
