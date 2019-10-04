class Player < ApplicationRecord
  has_secure_token
  belongs_to :field
end
