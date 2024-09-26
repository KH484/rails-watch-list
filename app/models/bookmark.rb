class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  belongs_to :list
  belongs_to :movie
  validates :movie_id, uniqueness: { scope: :list_id }
end
