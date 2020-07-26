class Show < ActiveRecord::Base
  def self.highest_rating
    Show.all.maximum(:rating)
  end

  def self.most_popular_show
    Show.all.where("rating == ?", highest_rating).first
  end

  def self.lowest_rating
    Show.all.minimum(:rating)
  end



end
