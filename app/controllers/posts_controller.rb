class PostsController < ApplicationController
  def index
    @posts = find_posts
    @lists = List.pluck(:category, :name)
  end

  private 

  def find_posts
    posts = Post.page(params[:page])
    posts = posts.by_social_media(params[:social_media]) if params[:social_media].present?
    posts = posts.by_postable_type(params[:type]) if params[:type].present?
    posts = posts.by_date_range(params[:date][:from], params[:date][:to]) if params[:date].present? && params[:date][:from].present? && params[:date][:to].present?
    posts
  end
end
