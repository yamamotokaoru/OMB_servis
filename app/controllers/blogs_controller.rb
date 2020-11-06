class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end
  def create
    @blog = current_user.blogs.new(blogs_params)
    @blog.save
    redirect_to user_path(current_user.id)
  end 
  def index
    @blogs = Blog.all
    @tags = ActsAsTaggableOn::Tag.all
    if params[:tag_name]
      @blogs = Blog.tagged_with("#{params[:tag_name]}")
    end
  end
  def show
    @blog = Blog.find(params[:id])

  end
  def edit
    @blog = Blog.find(params[:id])
  end
  def update
    @blog = Blog.find(params[:id])
    @blog.save
    redirect_to user_path(current_user.id)
  end
  def destroy
    @blogs = Blog.find(params[:id])
    @blogs.destroy
    redirect_to user_path(current_user.id)
  end
  
  private
  def blogs_params
    params.require(:blog).permit(:title, :body, :image, :start_time, :tag_list, :tag_name, :address, :status)
  end

end 
