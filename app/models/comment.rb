class Comment < ApplicationRecord
   belongs_to :quote


  validates :text, presence: true
    validates :author, presence: true

end
