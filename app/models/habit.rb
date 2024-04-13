class Habit < ApplicationRecord
  belongs_to :frog

  validates :name, presence: true

  def display_frequency
    case frequency
    when 1
      'Daily'
    when 2
      'Weekly'
    when 3
      'Monthly'
    else
      'Unknown'
    end
  end
end
