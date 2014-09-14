# Internal: OAuth service provider
#
# This class SHOULD NOT be used directly. If you want to add new provider
# you should subclass this model.
class Auth::Provider < ActiveRecord::Base
  validates :user,  presence: true
  validates :uid,   presence: true
  validates :type,  presence: true

  belongs_to :user, autosave: true

  def self.authorize(auth)
    where(uid: auth.uid).first_or_create do |provider|
      provider.create_user_from(auth)
    end
  end

  protected

  def create_user_from(_)
    fail 'You need to override this method'
  end
end
