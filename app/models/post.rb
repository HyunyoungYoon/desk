class Post < ActiveRecord::Base
    belongs_to :agenda
    accepts_nested_attributes_for :agenda
    
    has_many :comments, :dependent => :destroy
    accepts_nested_attributes_for :comments, reject_if: :reject_comments, allow_destroy: true
    
    #reject if the content of comment is blank
    def reject_comments(attributes)
        attributes['content'].blank?
    end
   
end
