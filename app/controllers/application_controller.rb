class ApplicationController < ActionController::Base
  before_action :authenticate_user!
<<<<<<< HEAD

  def article_params
    params.require(:user).permit(:photo)
  end

=======
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo])
  end
>>>>>>> origin
end
