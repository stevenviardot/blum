class PagesController < ApplicationController

  def home
    @posts = Post.all.order("created_at DESC")
  end

  def renting_list
    @posts = Post.all.order("created_at DESC")
    @rents = Rent.where(:user_id => current_user).order("created_at DESC")
  end

  def offers
    @posts = Post.all.paginate(:page => params[:page], :per_page => 5)
  end

  def contact
  end

end
