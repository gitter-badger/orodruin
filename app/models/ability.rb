# Internal: Describe abilities
#
# This class describe abilities for user with given roles.
#
# It SHOULD NOT be used directly. Instead use CanCanCan gem.
#
# Example:
#
#     can? :edit, post #=> false if `current_user` cannot edit given post
class Ability
  include CanCan::Ability

  # Define abilities for given user
  def initialize(user)
    user ||= User.new

    # Admin can everything
    can :manage, :all if user.is_admin?

    # Blog is readable by anybody
    can :read, Blog::Post

    # Everyone can create new comments
    can :create, Blog::Comment

    # User can update his comments
    can :update, Blog::Comment, user_id: user.id.to_s

    # Blog moderator can manage all comments
    can :manage, Blog::Comment if user.has_role?(:moderator, Blog::Comment)

    # Author can create and update blog posts
    can [:create, :update], Blog::Post if user.is_author?
  end
end
