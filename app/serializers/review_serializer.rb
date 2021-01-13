class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :review_post, :game_id
end
