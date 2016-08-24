class Agenda < ActiveRecord::Base
   has_many :posts, through: :user

   has_many :users, through: :deskings
   has_many :deskings
end
