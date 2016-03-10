class HomeController < ApplicationController
  def index
  end
  
  def winner
    @winner = Voting.select("picture_id as pic, sum(rating) as sum").group("picture_id").order("sum DESC").limit(3)
    @winner.each do |w|
      puts w.pic.to_s + " " + w.sum.to_s
    end
  end
end
