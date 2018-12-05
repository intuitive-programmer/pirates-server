class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :points
  end
  
end
