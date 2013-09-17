class PostsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @posts = @category.posts
  end

  def new
    @category = Category.find(params[:category_id])
    @post = Post.new
  end

  def create
    @category = Category.find(params[:category_id])
    @post = Post.create( {title: params[:title],
                  description: params[:description],
                  email: params[:email],
                  secure_email: "fjf8932983hiufewf28y9@craigslistjr.com",
                  rent: params[:rent],
                  area: params[:area],
                  key: "wzdzihu7832" } )
    redirect_to category_posts_path(@category.id)
  end

  def show
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
  end
end
