# Internal: Set Devise recoverable
#
# Set recoverable flag and all needed fields.
module Devise::Recoverable
  extend ActiveSupport::Concern

  included do
    devise :recoverable

    field :reset_password_token,   type: String
    field :reset_password_sent_at, type: Time
  end
end
