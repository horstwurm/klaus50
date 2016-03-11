class HomeController < ApplicationController
  def index
  end
  
  def pw_reset
    if params[:email] != nil
      @u = User.where("email=?",params[:email]).first
      if @u != nil
        new_pw = ""
        5.times do 
          new_pw = new_pw + rand(9).to_s
        end
        new_pw = @u.name + new_pw
        @u.password = new_pw
        @u.save
        UserMailer.signin_confirmation(@u, new_pw).deliver_now
      end
    end
  end
  
  def winner
    @winner = Voting.select("picture_id as pic, sum(rating) as sum").group("picture_id").order("sum DESC").limit(3)
    @winner.each do |w|
      puts w.pic.to_s + " " + w.sum.to_s
    end
  end
end
