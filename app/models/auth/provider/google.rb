# Public: Provider for Google OAuth2
class Auth::Provider::Google < Auth::Provider
  def create_user_from(auth)
    create_user(first_name: auth.info.first_name,
                last_name: auth.info.last_name,
                email: auth.info.email,
                password: Devise.friendly_token[0, 20],
                nickname: '')
  end
end
