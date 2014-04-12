class AddCreditentialsToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname, null: false
      t.date :birthday
    end
  end
end
