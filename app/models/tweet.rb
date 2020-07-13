class Tweet < ApplicationRecord
  validates :message, presence: true
  belongs_to :user
  has_many :comments
  has_many :tags, through: :tweets_tags
end
