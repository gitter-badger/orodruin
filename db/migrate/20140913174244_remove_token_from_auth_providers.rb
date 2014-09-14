class RemoveTokenFromAuthProviders < ActiveRecord::Migration
  def change
    remove_column :auth_providers, :token, :string
  end
end
