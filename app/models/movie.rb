class Movie < ApplicationRecord
  before_destroy :validate_bookmarks
  has_many :bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  private

  def validate_bookmarks
    raise(ActiveRecord::InvalidForeignKey) unless bookmarks.empty?
  end
end
