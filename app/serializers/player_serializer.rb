class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :token
  belongs_to :field
end
