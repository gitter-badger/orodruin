class Role < ActiveRecord::Base
  has_and_belongs_to_many :participants, :join_table => :participants_roles
  belongs_to :resource, :polymorphic => true
  
  scopify
end
