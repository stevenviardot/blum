class RentsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_post

  def index
    if user_signed_in?
      @rents = Rent.all
    end
  end

  def show
    @rents = Rent.all
  end

  def new
    @rent = @post.rents.new
  end

  def create
   @rent = @post.rents.create(rent_params)
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
