class Gadget < ApplicationRecord
  attachment :gadget_image
  
  belongs_to :user
end
