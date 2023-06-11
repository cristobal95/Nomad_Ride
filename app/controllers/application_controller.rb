class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def article_params
    params.require(:user).permit(:photo)
  end

end
