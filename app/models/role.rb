# Private: Store roles assigned to users.
#
# This is DB model that store role names assigned to each user.
#
# You SHOULD NOT edit entries in this table by hand.
#
# Example:
#
#     user = User.first
#     user.roles << :admin
#
#     user.is_admin?
class Role
  include Mongoid::Document

  has_and_belongs_to_many :users # rubocop:disable HasAndBelongsToMany
  belongs_to :resource, polymorphic: true

  field :name, type: String

  index({
    name: 1,
    resource_type: 1,
    resource_id: 1
  }, { unique: true })

  scopify
end
