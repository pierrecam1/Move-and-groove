class LikesController < ApplicationController
    before_action :find_challenge
    before_action :find_like, only: [:destroy]

   def create
     if already_liked?
        flash[:notice] = "You can't like more than once"
      else
        @challenge.likes.create(user_id: current_user.id)
    end
      redirect_to challenges_path
   end
   
   def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to challenges_path
    end
   private

   def already_liked?
    Like.where(user_id: current_user.id, challenge_id:
    params[:challenge_id]).exists?
  end

   def find_challenge
     @challenge = Challenge.find(params[:challenge_id])
   end
   
   def find_like
    @like = @challenge.likes.find(params[:id])
    end
 end