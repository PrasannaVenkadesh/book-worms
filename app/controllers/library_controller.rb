class LibraryController < ApplicationController
  def index
  	@user = current_user
  	@collections = @user.collections.paginate(page: params[:page])
  end

  def show
  end
end