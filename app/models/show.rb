class Show < ActiveRecord::Base
  def self.highest_rating
    Show.all.maximum(:rating)
  end

  def self.most_popular_show
    x = highest_rating
    Show.all.name.where("rating == ?", x)
  end



end
