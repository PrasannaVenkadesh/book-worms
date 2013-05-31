class StaticPagesController < ApplicationController

  def home
  	if signed_in?
  		@user = current_user
  		@collections = @user.collections.paginate(page: params[:page])
  	end
  end

  def help
  end

  def about
  end
end
