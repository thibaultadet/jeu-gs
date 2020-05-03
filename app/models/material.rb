class Material < ApplicationRecord
  belongs_to :game

  validates :category, presence: true
  validates :name, presence: true
end
