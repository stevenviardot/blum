class PagesController < ApplicationController

  def home
    @categories = Category.all
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
    if params[:category].blank?
      @posts = Post.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    else
      @category_id = Category.find_by(name: params[:category]).id
      @posts = Post.where(:category_id => @category_id).order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    end
  end

  def contact
  end

end
