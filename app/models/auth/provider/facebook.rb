# Public: Provider for Facebook OAuth
class Auth::Provider::Facebook < Auth::Provider
  def create_user_from(auth)
    create_user(email: auth.info.email,
                first_name: auth.info.first_name,
                last_name: auth.info.last_name,
                nickname: auth.info.nickname,
                password: Devise.friendly_token[0, 20],
                email: auth.info.email)
  end
end
