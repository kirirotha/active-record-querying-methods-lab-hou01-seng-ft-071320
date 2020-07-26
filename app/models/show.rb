class Show < ActiveRecord::Base
  def self.highest_rating
    Show.all.maximum(:rating)
  end

  def self.most_popular_show
    x = highest_rating
    Show.all.where("rating == ?", x).first
  end

  def lowest_rating
    Show.all.minimum(:rating)
  end



end
