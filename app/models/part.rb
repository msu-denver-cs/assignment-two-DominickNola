class Part < ApplicationRecord
  # many-to-many through a join model.
  has_many :car_parts, dependent: :delete_all
  has_many :cars, through: :car_parts

  validates :part_name, presence: true
end
