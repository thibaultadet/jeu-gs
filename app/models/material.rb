class Material < ApplicationRecord
  belongs_to :games

  validates :type, presence: true
  validates :name, presence: true
end
