class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers
  has_many :followed_users, class_name: 'User', foreign_key: 'follower_id'
  has_many :followed_topics, through: :topic_followers, source: :topic
end
