module Devise::Authenticatable
  extend ActiveSupport::Concern

  included do
    devise :database_authenticatable, :validatable

    field :email,               type: String,  default: ''
    field :encrypted_password,  type: String,  default: ''
  end
end
