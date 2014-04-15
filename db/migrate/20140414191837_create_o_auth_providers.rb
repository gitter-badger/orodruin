class CreateOAuthProviders < ActiveRecord::Migration
  def change
    create_table :o_auth_providers do |t|
      t.references :user

      t.string :token
      t.string :type

      t.timestamps
    end

    add_index :o_auth_providers, :user_id
    add_index :o_auth_providers, :type
    add_index :o_auth_providers, [:type, :token]
  end
end
