class HomeController < ApplicationController
  def top
    if user_signed_in?
      @post = Post.new
      @posts = Post.all.order(created_at: :desc)
    else
      @message = "Welcome to Hitch"
    end
  end
  
  def about
  end

end
