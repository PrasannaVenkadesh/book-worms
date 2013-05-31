class LibraryController < ApplicationController

	before_filter :user_has_signed_in, only: [:index]

  def index
  	@user = current_user
  	@collections = @user.collections.paginate(page: params[:page])
  end

  def show
  end
end