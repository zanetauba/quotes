class Quote < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :content, presence: true
end
