class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  include SessionsHelper


  private 
  def require_logged_in_user
    unless user_signed_in?
      flash[:danger] = 'Área restrita. Por favor,  realize o login'
      redirect_to entrar_path
    end
  end
end
