class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :chirps

  has_many :follows, foreign_key: 'follower_id'
  has_many :followings, through: :follows, source: :following

  has_many :followeds, foreign_key: 'following_id', class_name: 'Follow'
  has_many :followers, through: :followeds, source: :follower
end
