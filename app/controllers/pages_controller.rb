class PagesController < ApplicationController

  def home
    @posts = Post.all.order("created_at DESC")
  end

  def renting_list
    if user_signed_in?
      @posts = Post.all
      @rents = Rent.where(:user_id => current_user).order("created_at DESC")
      @rents_recipient = Rent.where(:recipient => current_user).order("created_at DESC")
    end
  end

  def offers
    @posts = Post.all.paginate(:page => params[:page], :per_page => 5)
  end

  def contact
  end

end
