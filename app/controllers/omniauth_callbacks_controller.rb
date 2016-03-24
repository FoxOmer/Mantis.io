class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def google
    @user = User.apply_google_auth request.env['omniauth.auth'], current_user

    flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
    sign_in_and_redirect @user, event: :authentication
  end

  protected

  def new_session_path
    root_path
  end

  def after_omniauth_failure_path_for(_resource_name)
    root_path
  end
end