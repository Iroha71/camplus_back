class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :token, :savedata
  belongs_to :field
end
