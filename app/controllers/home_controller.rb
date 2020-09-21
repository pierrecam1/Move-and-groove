class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:dashboard, :my_sessions]
  before_action :sum_post
  def index
  end

  def dashboard
    @posts = Post.all
    @data = Post.where(:user_id => current_user)
    @current_posts = Post.where(:user_id => current_user)

  end
  
  def my_sessions
    @posts = Post.where(:user_id => current_user)
    @data = Post.where(:user_id => current_user)

    
  end

  private
    def sum_post    
      @running_post = Post.where(:activity => "Running")
      @running_posts_per_user_count = @running_post.joins(:user).group(:user).order('count_all DESC').limit(3).count
      @distance =  @running_post.group(:user)
      @distance_running_sum =  @running_post.group(:user).order('sum_distance DESC').limit(3).sum(:distance)

      @biking_post = Post.where(:activity => "Cycling")
      @biking_posts_per_user_count = @biking_post.joins(:user).group(:user).order('count_all DESC').limit(3).count
      @distance =  @biking_post.group(:user)
      @distance_biking_sum =  @biking_post.group(:user).order('sum_distance DESC').limit(3).sum(:distance)

      @hiking_post = Post.where(:activity => "Hiking")
      @hiking_posts_per_user_count = @hiking_post.joins(:user).group(:user).order('count_all DESC').limit(3).count
      @distance =  @hiking_post.group(:user)
      @distance_hiking_sum =  @hiking_post.group(:user).order('sum_distance DESC').limit(3).sum(:distance)


    end
end

