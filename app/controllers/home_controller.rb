class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:dashboard, :my_sessions]

  def index
  end

  def dashboard
    @posts = Post.all
  end
  def my_sessions
  end
end
