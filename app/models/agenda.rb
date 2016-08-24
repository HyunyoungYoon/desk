class Agenda < ActiveRecord::Base
    has_many :posts
    belongs_to :user #temporary 1:N
    
    # return my agendas
    
    # return following agendas
    
    # return other users' agendas which share same urls(posts)
    def similar
      agendas = Array.new
      self.posts.all.each do |p|
        p.same.each do |same|
          agendas << same.agenda
        end
      end
      return agendas
    end
    
    # return related links in similar agendas
    def related_posts
      posts = Array.new
      base = self.posts.pluck(:url)
      self.similar.each do |a|
        a.posts.where.not('url IN (?)',base).all.each do |p|
          posts << p
        end
      end
      return posts.uniq
    end
end
