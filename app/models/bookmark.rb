class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, :list, presence: true
  validates :movie_id, uniqueness: { scope: :list, message: "You could this movie once" }
end
