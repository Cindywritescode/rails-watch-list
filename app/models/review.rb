class Review < ApplicationRecord
  belongs_to :list
  validates :comment, presence: true
  validates :rating, inclusion: { in: 1..5 }
end