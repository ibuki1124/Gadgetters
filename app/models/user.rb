class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :icon_image
  
  has_many :gadgets, dependent: :destroy
  
  validates :name, presence: true, uniqueness: true, length: {maximum: 15}
  validates :introduction, length: {maximum: 200}
end
