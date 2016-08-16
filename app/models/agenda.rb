class Agenda < ActiveRecord::Base
    has_many :posts
    belongs_to :agenda #temporary 1:N
end
