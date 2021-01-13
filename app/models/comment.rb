class Comment < ApplicationRecord
  belongs_to :tweet, counter_cache: true

  validates :body, presence: true, length: { maximum: 140 }
end
