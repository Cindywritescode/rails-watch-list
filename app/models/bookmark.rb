class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list, message: "you can't put the same movie twice!" }
  validates :comment, length: { minimum: 6 }
end
