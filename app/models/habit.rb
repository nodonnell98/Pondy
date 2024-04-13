class Habit < ApplicationRecord
  belongs_to :frog

  validates :name, presence: true
end
