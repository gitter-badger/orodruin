# Public: Store accreditation information.
#
# This model store information about visitor accreditation.
# Fields are:
#  - type - store accreditation type (visitor, media, volunteer, etc.)
class Accreditation
  include Mongoid::Document
  include Mongoid::Timestamps

  field :type, String

  field :start_at, DateTime
  field :end_at, DateTime

  belongs_to :user
end
