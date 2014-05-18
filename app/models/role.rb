# Internal: Participant role in convention
#
# Available roles:
#
# - admin
# - writer
# - volunteer
# - moderator
# - organisator
class Role < ActiveRecord::Base
  # rubocop:disable HasAndBelongsToMany
  has_and_belongs_to_many :participants, join_table: :participants_roles
  belongs_to :resource, polymorphic: true

  scopify
end
