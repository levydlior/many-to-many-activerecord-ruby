class Game < ActiveRecord::Base
    belongs_to :kid
    belongs_to :store

    def good_friend(kid)
     if (!kid)
        puts "You don't have this friend 😞"
     elsif self.kid_id == kid.id
        puts "That's kind of stingy"
     else
        self.update(kid_id: kid.id)
        puts "You gave '#{self.title}' to #{kid.name}. What a good friend you are!"
     end
    end

end