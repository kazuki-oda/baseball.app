class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :comment

  validates :content, presence: true
end
