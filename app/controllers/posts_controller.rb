class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page])
    @lists = List.all
  end
end
