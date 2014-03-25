class User
  include Mongoid::Document
  rolify

  include Devise::Authenticatable
  include Devise::Confirmable
  include Devise::Rememberable
  include Devise::Recoverable
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :registerable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  # Basic user data
  field :first_name, type: String
  field :last_name,  type: String
  field :nickname,   type: String
  field :birthday,   type: Date

  validates :nickname, presence: true, uniqueness: true

  alias_method :to_s, :nickname
end
