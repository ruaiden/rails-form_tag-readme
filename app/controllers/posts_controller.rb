class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end 

  def create
    Post.create(title: params[:post][:title], describe: params[:post][:description])
    redirect_to posts_path
  end 
  
end
