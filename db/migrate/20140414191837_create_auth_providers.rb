class CreateAuthProviders < ActiveRecord::Migration
  def change
    create_table :auth_providers do |t|
      t.references :user

      t.string :token
      t.string :type

      t.timestamps
    end

    add_index :auth_providers, :user_id
    add_index :auth_providers, :type
    add_index :auth_providers, [:type, :token]
  end
end
