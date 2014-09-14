class AddUidToAuthProviders < ActiveRecord::Migration
  def change
    add_column :auth_providers, :uid, :string
  end
end
