# Internal: Add Devise rememberable option
#
# Set rememberable flag and add all neded fields.
module Devise::Rememberable
  extend ActiveSupport::Concern

  included do
    devise :rememberable

    field :remember_created_at, type: Time
  end
end
