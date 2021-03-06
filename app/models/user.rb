class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :post

  has_many :agendas, through: :deskings
  has_many :deskings
 # has_many :agendas, -> {includes :posts}
end

