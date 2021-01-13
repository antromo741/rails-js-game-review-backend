class GameReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name 
  has_many :reviews
end
