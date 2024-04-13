class Combat < ApplicationRecord
  belongs_to :frog
  belongs_to :enemy
end
