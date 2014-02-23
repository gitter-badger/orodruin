module Devise::Confirmable
  extend ActiveSupport::Concern

  included do
    devise :confirmable

    field :confirmation_token,   type: String
    field :confirmed_at,         type: Time
    field :confirmation_sent_at, type: Time
    field :unconfirmed_email,    type: String # Only if using reconfirmable
  end
end
