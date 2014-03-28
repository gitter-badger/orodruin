# Internal: Add Devise authenticatable fields to model
#
# Set Devise flags for database authentication and turn on validations. Also
# add `email` and `encrypted_password` fields.
module Devise::Authenticatable
  extend ActiveSupport::Concern

  included do
    devise :database_authenticatable, :validatable

    field :email,               type: String,  default: ''
    field :encrypted_password,  type: String,  default: ''
  end
end
