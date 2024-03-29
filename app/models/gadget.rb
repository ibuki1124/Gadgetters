class Gadget < ApplicationRecord
  attachment :gadget_image
  
  belongs_to :user
  
  validates :title, presence: true, length: {maximum: 20}
  validates :body, presence: true, length: {maximum: 400}
end
