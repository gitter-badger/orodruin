# Public: User information
#
# This model store user information and provide simple way to authorize and
# authenticate users.
#
# This model is [rolified](https://github.com/EppO/rolify). Check documentation
# to know how to deal with roles.
#
# Devise modules active:
#
# - database authenticatable
# - registerable
# - omniauthable (Facebook, Google OAuth2)
# - recoverable
# - rememberable
# - trackable
# - validatable
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable,
         omniauth_providers: [:facebook, :google_oauth2]

  has_many :participations
  has_many :conventions, through: :participations

  validates :nickname, uniqueness: true
end
