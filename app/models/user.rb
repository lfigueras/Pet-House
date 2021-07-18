class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bodies
  has_many :medicals
  has_one :appointment
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
