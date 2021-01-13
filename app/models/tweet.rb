class Tweet < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_many  :comments

  validates :body, presence: true, length: { maximum: 140 }
end
