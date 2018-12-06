class ScoreSerializer < ActiveModel::Serializer
  attributes :points, :id
  has_many :users
  
end
