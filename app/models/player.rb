class Player < ApplicationRecord
  has_secure_token
  belongs_to :field, optional: true

  def decide_recommend_field(system, network, embeded)
    flag_nums = [system.to_i, network.to_i, embeded.to_i]
    max = -1
    selected_index = -1
    flag_nums.each_with_index do |flag_num, index|
      if flag_num >= max
        max = flag_num
        selected_index = index
      end
    end
    return selected_index + 1
  end
end
