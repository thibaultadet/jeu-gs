class Game < ApplicationRecord
  has_many :exercises, dependent: :destroy
  has_many :materials, dependent: :destroy

  validates :name, presence: true
end
