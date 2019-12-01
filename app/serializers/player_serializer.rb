class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :token, :savedata, :updated_at
  belongs_to :field

  def updated_at
    object.updated_at.strftime("%Y年%m月%d日")
  end
end
