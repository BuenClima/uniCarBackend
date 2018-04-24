class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :cars
  has_many :passengers
  validates :name,
            :last_name,
            :birthdate,
            :nickname,
            presence: true
  validates_uniqueness_of :email
end
