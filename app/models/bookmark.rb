class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true
  validates :list, presence: true
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :list_id, scope: :movie_id, message: "should be unique for a given movie/list couple"
end
