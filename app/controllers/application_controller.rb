class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!, only: [:show, :index]
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :save]

  def authenticate_user!
    return if admin_signed_in?
    super
  end


  private

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
