class GameReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :active
  has_many :reviews
end
