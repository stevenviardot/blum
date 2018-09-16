class RentsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_post

  def index
    @rents = Rent.where(:user_id => current_user).order("created_at DESC")
  end

  def show
    @rent = Rent.find(params[:id])
  end

  def new
    @rent = @post.rents.new
  end

  def create
   @rent = @post.rents.create(rent_params)

   @rent.recipient = @post.user_id
   @rent.user_id = current_user
   @rent.save
   redirect_to renting_list_path(@post)
  end


private

  def rent_params
    params.require(:rent).permit(:body, :delivery_adress, :delivery_time, :activated)
  end

  def get_post
    @post = Post.find(params[:post_id])
  end

end
