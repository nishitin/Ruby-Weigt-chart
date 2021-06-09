class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # これは親要素が消絵たらこ要素も消えると言う意味
  has_many :weight, dependent: :destroy
  has_many :profile, dependent: :destroy
end
