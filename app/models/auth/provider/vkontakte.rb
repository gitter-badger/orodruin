# OAuth provider for VKontakte
class Auth::Provider::Vkontakte < Auth::Provider
  def create_user_from(auth)
    create_user(first_name: auth.info.first_name,
                last_name: auth.info.last_name,
                nickname: auth.info.nickname,
                email: auth.extra.raw_info.email,
                password: Devise.friendly_token[0, 20])
  end
end
