class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def destroy_session_user
    sign_out(current_user)
    redirect_to unauthenticated_root_path,
                alert: 'You do not have permission to access'
  end
end
