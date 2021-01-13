class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name 
end
