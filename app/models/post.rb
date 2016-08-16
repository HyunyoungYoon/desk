class Post < ActiveRecord::Base
    belongs_to :agenda
    accepts_nested_attributes_for :agenda
    
    has_many :comments, :dependent => :destroy
    accepts_nested_attributes_for :comments, reject_if: :reject_comments, allow_destroy: true
    
    # reject if the content of comment is blank
    def reject_comments(attributes)
        attributes['content'].blank?
    end
   
    # return my comment: 해당 포스트에 속해 있으며 writer가 자기자신이다.
    def my_comment
    #   self.comments.where(writer:self.user_id).first 
      self.comments.where(writer: 1).first 
    end
    
    # return an active record of (multiple) shared comments
    # 해당 포스트에 속해 있으며 writer는 자기 자신이 아니다.
    def shared_comments
    #   self.comments.where.not(writer: current_user.id)
      self.comments.where.not(writer: 1)
    end
    
    # return posts with same url except self
    def same
    #   posts = Post.except(self) # 왜 이거 안먹지
    #   return posts.where(url: self.url)
    Post.where(url: self.url).where.not(id: self.id)
    end
end
