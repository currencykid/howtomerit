class Comment < ActiveRecord::Base
  belongs_to :post, dependent: :destroy
  belongs_to :user, dependent: :destroy 
  validates :content, presence: true, length: {minimum: 2, maximum: 500}


end
