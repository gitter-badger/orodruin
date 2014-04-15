# Internal: OAuth service provider
#
# This class SHOULD NOT be used directly. If you want to add new provider
# you should subclass this model.
class Auth::Provider < ActiveRecord::Base
  validates :user,   presence: true
  validates :token,  presence: true
  validates :type,   presence: true

  belongs_to :user
end
