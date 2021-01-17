class Game < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :name, presence: true

  def make_active_game_for(user)
    user.games.update_all(active: false)
    self.update(active:true)
  end
end

