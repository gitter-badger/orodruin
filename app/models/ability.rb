class Ability
  include CanCan::Ability

  # Define abilities for given user
  def initialize(user)
    user ||= User.new

    # Admin can everything
    can :manage, :all if user.is_admin?

    # Blog can be readable by anybody
    can :read, Blog::Post
    can :read, Blog::Comment

    # User can manage his comments
    can :manage, Blog::Comment, user_id: user.id.to_s

    # Blog moderator can manage all comments
    can :manage, Blog::Comment if user.has_role?(:moderator, Blog::Comment)

    # Author can create and update blog posts
    can [:create, :update], Blog::Post if user.is_author?
  end
end
