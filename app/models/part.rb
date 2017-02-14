class Part < ApplicationRecord
  belongs_to :product, required: false
end
