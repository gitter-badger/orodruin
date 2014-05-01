class Participant < ActiveRecord::Base
  rolify
  belongs_to :user
  belongs_to :convention
end
