class Part < ApplicationRecord
  belongs_to :monster, optional: true
end
