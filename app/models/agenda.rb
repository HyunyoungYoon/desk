class Agenda < ActiveRecord::Base
    has_many :posts
    belongs_to :user #temporary 1:N
end
