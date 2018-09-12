class RentsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_post

  def index
    if user_signed_in?
      @posts = Post.where(:user_id => current_user).order("created_at DESC")
      @rents = Rent.where(:user_id => current_user).order("created_at DESC")
    end
  end

  def show
    @rent = Rent.find(params[:id])
  end

  def new
    @rent = @post.rents.new
  end

  def create
   @rent = @post.rents.create(rent_params)
   @rent.user_id = current_user.id
   @rent.save
   redirect_to post_rents_path(@post)
  end


private

  def rent_params
    params.require(:rent).permit(:body, :delivery_adress, :delivery_time)
  end

  def get_post
    @post = Post.find(params[:post_id])
  end

end
