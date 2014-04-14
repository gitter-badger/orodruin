# Public: User decorator
#
# This class describe view behaviours of User model. All code that will contain
# any view-related code should be placed here instead of model (which should
# contain only logic-specific code).
#
# Example:
#
#     user = User.first.decorated
#
#     user.avatar_url
#     # => https://secure.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50
class UserDecorator < Draper::Decorator
  delegate_all

  # Public: Return Gravatar URL for decorated object
  #
  # options - hash containing URL options for Gravatar. Description of them can
  #   be found here https://gravatar.com/site/implement/images/
  #
  # Returns URI string
  def avatar_url(options = {})
    options = {
      rating:   'pg',
      default:  'retro'
    }.merge(options)
    hash = Digest::MD5.hexdigest(object.email)

    uri = URI.parse("https://secure.gravatar.com/avatar/#{hash}")
    uri.query = URI.encode_www_form(options)

    uri.normalize.to_s
  end

  # Public: Create image tag containing object avatar
  #
  # html_options - tag parameters
  # options - options passed to #avatar_url method
  #
  # Returns HTML safe tag containing object avatar
  def avatar(html_options: {}, options: {})
    html_options = {
      alt:  object.to_s
    }

    helpers.image_tag(avatar_url(options), html_options)
  end
end
