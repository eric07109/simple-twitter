class Tweet < ApplicationRecord
  validates_length_of :description, maximum: 140

  belongs_to :user

  has_many :replies
  has_many :replying_users, through: :replies, source: :user
end
