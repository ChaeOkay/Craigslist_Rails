class PostsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @posts = @category.posts

    @errors = flash[:errors] unless flash[:errors].nil? || flash[:errors].empty?
  end

  def new
    @category = Category.find(params[:category_id])
    @post = Post.new
  end

  def create
    @category = Category.find(params[:category_id])
    @post = Post.create( {
                  category: @category,
                  title: params[:post][:title],
                  description: params[:post][:description],
                  email: params[:post][:email],
                  secure_email: "fjf8932983hiufewf28y9@craigslistjr.com",
                  rent: params[:post][:rent],
                  area: params[:post][:area],
                  key: "wzdzihu7832" } )

    flash[:errors] = @post.errors.full_messages
    redirect_to category_posts_path(@category.id)
  end

  def show
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
  end
end
