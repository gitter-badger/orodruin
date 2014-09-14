class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    auth = Auth::Provider::Facebook.authorize(request.env['omniauth.auth'])

    if auth.user.persisted?
      sign_in_and_redirect auth.user, event: :authentication
    else
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
