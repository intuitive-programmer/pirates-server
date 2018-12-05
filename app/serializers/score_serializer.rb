class ScoreSerializer < ActiveModel::Serializer
  attributes :points

  has_many :users
  
end
