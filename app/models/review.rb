class Review < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :name, presence: true
end
