class Game < ApplicationRecord
  has_many :exercises
  has_many :materials

  validates :name, presence: true
end
