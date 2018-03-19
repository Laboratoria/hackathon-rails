class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :set_layout

  def after_sign_in_path_for(_resource)
    if current_user.customer?
      customer_home_index_path
    elsif current_user.admin?
      admin_home_index_path
    end
  end

  def valid_admin
    return unless user_signed_in?
    destroy_session_user unless current_user.admin?
  end

  def valid_customer
    return unless user_signed_in?
    destroy_session_user unless current_user.customer?
  end

  protected

  def set_layout
    'application'
  end

  private

  def destroy_session_user
    sign_out(current_user)
    redirect_to unauthenticated_root_path,
                alert: 'You do not have permission to access'
  end
end
